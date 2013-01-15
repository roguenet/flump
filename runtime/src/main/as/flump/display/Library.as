//
// Flump - Copyright 2013 Flump Authors

package flump.display {

import starling.display.DisplayObject;
import starling.display.Image;

/**
 * Container for Movie and Image symbols created by the Flump exporter.
 */
public interface Library
{
    /** @return the names of all Movie symbols in the Library */
    function get movieSymbols () :Vector.<String>;

    /** @return the names of all Image symbols in the Library */
    function get imageSymbols () :Vector.<String>;

    /**
     * Creates a movie for the given symbol.
     *
     * @param symbolName the symbol name of the movie to be created
     *
     * @return a Movie instance for the symbol
     *
     * @throws Error if there is no such symbol in these resources, or if the symbol isn't a Movie.
     */
    function createMovie (symbolName :String) :Movie;

    /**
     * Creates an image for the given symbol.
     *
     * @param symbolName the symbol name of the image to be created
     *
     * @return an Image instance for the symbol
     *
     * @throws Error if there is no such symbol in these resources, or if the symbol isn't an Image.
     */
    function createImage (symbolName :String) :Image;

    /** Creates an instance of the given Movie or Image symbol */
    function createDisplayObject (symbolName :String) :DisplayObject;
}

}