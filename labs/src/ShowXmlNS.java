import java.net.*;
import java.util.*;
import javax.swing.*;
import oracle.xml.parser.v2.*;
import org.w3c.dom.*;
import org.xml.sax.*;
import java.util.Properties;
import java.io.*;

public class ShowXmlNS 
{
  public static void main(String[] args)
  {
    if (args.length == 1)
    {
      try
      {
        run(args[0]);
      }
      catch (Exception e)
      {
        System.err.println("Error------------------>: " + e.getMessage());  
      }
    }
    else
    {
      System.err.println("Usage: ShowXmlNS filename");
    }
  }
  
  private static void run(String filename) throws Exception
  {
    BufferedReader r = new BufferedReader(new InputStreamReader(System.in));
    URL xmlurl = newURL(filename);
    String baseFilename = xmlurl.getFile();
    baseFilename = baseFilename.substring(baseFilename.lastIndexOf('/')+1);
    int qmark = baseFilename.indexOf('?');
    if (qmark >= 0) baseFilename = baseFilename.substring(0, qmark);
    
    // Create a new XML Parser
    DOMParser d = new DOMParser();
    try
    { 
      d.parse(xmlurl);
      XMLDocument xmldoc = (XMLDocument) d.getDocument();
      NodeList nl = null;
      Node node = xmldoc.getDocumentElement();
      processNode(node, 1);    
    }
    catch (SAXParseException spe)
    { 
      errorExit(filename + " is not well-formed.");
    } 
    catch (FileNotFoundException f)
    {
      errorExit(filename+" not found.");
    }
    finally 
    {
      if (r != null) r.close();
    }
  }
  
  private static StringBuffer sb = new StringBuffer("                                ");
  private static void processNode(Node node, int level)
  {
    if (node.getNodeType() == Node.TEXT_NODE) 
    {
      // Display text nodes for context if non-zero length
      if (node.getNodeValue().trim().length() > 0)
      {        
        System.out.println(sb.substring(0, (level-2)*4) + node.getNodeValue().trim());
      }
      return;
    }
    if (node.getNodeType() != Node.ELEMENT_NODE) return;

    // node.getNodeName() includes the NS prefix
    // node.getLocalName() does not include the NS prefix
    // node.getPrefix() obtains the prefix for an element
    System.out.println(sb.substring(0, (level-1)*4) + "<" +  // indentation
                       node.getNodeName() +            
                       " xmlns(expanded)=\"" + node.getNamespaceURI() + "\">");
    
    if (node.hasChildNodes())
    {
      NodeList nl = node.getChildNodes();
      for (int i = 0; i < nl.getLength(); i++)
      {
         processNode(nl.item(i), level+1);
      }
    }
    /*
     * Print the end tag as well
     */
    System.out.println(sb.substring(0, (level-1)*4) + "</" +  // indentation
                       node.getNodeName() +            
                       " xmlns(expanded)=\"" + node.getNamespaceURI() + "\">");
    
  }
  
  private static URL newURL(String filename) throws MalformedURLException
  {
    URL url = null;
    try {
       // Check if filename is *already* a valid URL
       url = new URL(filename);
    }
    catch (MalformedURLException ex)
    {
      // Not a valid URL, so assume it's a "naked" filename and make a URL
      String path = (new File(filename)).getAbsolutePath();
      if (File.separatorChar != '/')
      {
        path = path.replace(File.separatorChar,'/');
      }
      // Add a leading slash if path doesn't start with one (e.g. E:/foo/bar)
      if (!path.startsWith("/")) {
        path = "/" + path;
      }
      // Construct the file URL
      url = new URL("file://" + path);
    }
    return url;
  } 
  
  private static void errorExit(String msg)
  {
    System.err.println("ShowXmlNS: " + msg);
    System.exit(1);
  }  
}

