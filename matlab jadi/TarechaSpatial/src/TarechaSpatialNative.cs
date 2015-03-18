/*
* MATLAB Compiler: 4.18 (R2012b)
* Date: Fri Jun 13 14:19:06 2014
* Arguments: "-B" "macro_default" "-W"
* "dotnet:TarechaSpatial,TarechaSpatial,2.0,private,remote" "-T" "link:lib" "-d"
* "G:\tarecha_spasial\matlab jadi\TarechaSpatial\src" "-w"
* "enable:specified_file_mismatch" "-w" "enable:repeated_file" "-w"
* "enable:switch_ignored" "-w" "enable:missing_lib_sentinel" "-w" "enable:demo_license"
* "-v" "class{TarechaSpatial:G:\tarecha_spasial\matlab
* jadi\batasMatrixKecil.m,G:\tarecha_spasial\matlab
* jadi\bersihkanMemory.m,G:\tarecha_spasial\matlab
* jadi\generatefile.m,G:\tarecha_spasial\matlab
* jadi\generatePohon.m,G:\tarecha_spasial\matlab
* jadi\generatePohonKelapa.m,G:\tarecha_spasial\matlab
* jadi\interpolasiLinier.m,G:\tarecha_spasial\matlab
* jadi\mapping.m,G:\tarecha_spasial\matlab
* jadi\mappingMatrixtoNearestCoordinat.m,G:\tarecha_spasial\matlab
* jadi\mappingObjek.m,G:\tarecha_spasial\matlab
* jadi\normalisasi.m,G:\tarecha_spasial\matlab jadi\pilih.m,G:\tarecha_spasial\matlab
* jadi\seleksiBF.m,G:\tarecha_spasial\matlab jadi\seleksiRHD.m,G:\tarecha_spasial\matlab
* jadi\visualisasiDuaInputan.m,G:\tarecha_spasial\matlab jadi\visualisasiRadius.m}" 
*/
using System;
using System.Reflection;
using System.IO;
using MathWorks.MATLAB.NET.Arrays;
using MathWorks.MATLAB.NET.Utility;
using ITarechaSpatialNative;

#if SHARED
[assembly: System.Reflection.AssemblyKeyFile(@"")]
#endif

namespace TarechaSpatialNative
{

  /// <summary>
  /// The TarechaSpatial class provides a CLS compliant, Object (native) interface to the
  /// M-functions contained in the files:
  /// <newpara></newpara>
  /// G:\tarecha_spasial\matlab jadi\batasMatrixKecil.m
  /// <newpara></newpara>
  /// G:\tarecha_spasial\matlab jadi\bersihkanMemory.m
  /// <newpara></newpara>
  /// G:\tarecha_spasial\matlab jadi\generatefile.m
  /// <newpara></newpara>
  /// G:\tarecha_spasial\matlab jadi\generatePohon.m
  /// <newpara></newpara>
  /// G:\tarecha_spasial\matlab jadi\generatePohonKelapa.m
  /// <newpara></newpara>
  /// G:\tarecha_spasial\matlab jadi\interpolasiLinier.m
  /// <newpara></newpara>
  /// G:\tarecha_spasial\matlab jadi\mapping.m
  /// <newpara></newpara>
  /// G:\tarecha_spasial\matlab jadi\mappingMatrixtoNearestCoordinat.m
  /// <newpara></newpara>
  /// G:\tarecha_spasial\matlab jadi\mappingObjek.m
  /// <newpara></newpara>
  /// G:\tarecha_spasial\matlab jadi\normalisasi.m
  /// <newpara></newpara>
  /// G:\tarecha_spasial\matlab jadi\pilih.m
  /// <newpara></newpara>
  /// G:\tarecha_spasial\matlab jadi\seleksiBF.m
  /// <newpara></newpara>
  /// G:\tarecha_spasial\matlab jadi\seleksiRHD.m
  /// <newpara></newpara>
  /// G:\tarecha_spasial\matlab jadi\visualisasiDuaInputan.m
  /// <newpara></newpara>
  /// G:\tarecha_spasial\matlab jadi\visualisasiRadius.m
  /// <newpara></newpara>
  /// deployprint.m
  /// <newpara></newpara>
  /// printdlg.m
  /// </summary>
  /// <remarks>
  /// @Version 2.0
  /// </remarks>
  public class TarechaSpatial : MarshalByRefObject, ITarechaSpatialNative.ITarechaSpatialNative, IDisposable
  {
    #region Constructors

    /// <summary internal= "true">
    /// The static constructor instantiates and initializes the MATLAB Compiler Runtime
    /// instance.
    /// </summary>
    static TarechaSpatial()
    {
      if (MWMCR.MCRAppInitialized)
      {
        Assembly assembly= Assembly.GetExecutingAssembly();

        string ctfFilePath= assembly.Location;

        int lastDelimiter= ctfFilePath.LastIndexOf(@"\");

        ctfFilePath= ctfFilePath.Remove(lastDelimiter, (ctfFilePath.Length - lastDelimiter));

        string ctfFileName = "TarechaSpatial.ctf";

        Stream embeddedCtfStream = null;

        String[] resourceStrings = assembly.GetManifestResourceNames();

        foreach (String name in resourceStrings)
        {
          if (name.Contains(ctfFileName))
          {
            embeddedCtfStream = assembly.GetManifestResourceStream(name);
            break;
          }
        }
        mcr= new MWMCR("",
                       ctfFilePath, embeddedCtfStream, true);
      }
      else
      {
        throw new ApplicationException("MWArray assembly could not be initialized");
      }
    }


    /// <summary>
    /// Constructs a new instance of the TarechaSpatial class.
    /// </summary>
    public TarechaSpatial()
    {
    }


    #endregion Constructors

    #region Finalize

    /// <summary internal= "true">
    /// Class destructor called by the CLR garbage collector.
    /// </summary>
    ~TarechaSpatial()
    {
      Dispose(false);
    }


    /// <summary>
    /// Frees the native resources associated with this object
    /// </summary>
    public void Dispose()
    {
      Dispose(true);

      GC.SuppressFinalize(this);
    }


    /// <summary internal= "true">
    /// Internal dispose function
    /// </summary>
    protected virtual void Dispose(bool disposing)
    {
      if (!disposed)
      {
        disposed= true;

        if (disposing)
        {
          // Free managed resources;
        }

        // Free native resources
      }
    }


    #endregion Finalize

    #region Methods

    /// <summary>
    /// Provides a single output, 0-input Objectinterface to the batasMatrixKecil
    /// M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object batasMatrixKecil()
    {
      return mcr.EvaluateFunction("batasMatrixKecil", new Object[]{});
    }


    /// <summary>
    /// Provides a single output, 1-input Objectinterface to the batasMatrixKecil
    /// M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="latitude">Input argument #1</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object batasMatrixKecil(Object latitude)
    {
      return mcr.EvaluateFunction("batasMatrixKecil", latitude);
    }


    /// <summary>
    /// Provides a single output, 2-input Objectinterface to the batasMatrixKecil
    /// M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object batasMatrixKecil(Object latitude, Object longitude)
    {
      return mcr.EvaluateFunction("batasMatrixKecil", latitude, longitude);
    }


    /// <summary>
    /// Provides a single output, 3-input Objectinterface to the batasMatrixKecil
    /// M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <param name="radiusBaris">Input argument #3</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object batasMatrixKecil(Object latitude, Object longitude, Object radiusBaris)
    {
      return mcr.EvaluateFunction("batasMatrixKecil", latitude, longitude, radiusBaris);
    }


    /// <summary>
    /// Provides a single output, 4-input Objectinterface to the batasMatrixKecil
    /// M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <param name="radiusBaris">Input argument #3</param>
    /// <param name="radiusKolom">Input argument #4</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object batasMatrixKecil(Object latitude, Object longitude, Object radiusBaris, 
                             Object radiusKolom)
    {
      return mcr.EvaluateFunction("batasMatrixKecil", latitude, longitude, radiusBaris, radiusKolom);
    }


    /// <summary>
    /// Provides a single output, 5-input Objectinterface to the batasMatrixKecil
    /// M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <param name="radiusBaris">Input argument #3</param>
    /// <param name="radiusKolom">Input argument #4</param>
    /// <param name="interval">Input argument #5</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object batasMatrixKecil(Object latitude, Object longitude, Object radiusBaris, 
                             Object radiusKolom, Object interval)
    {
      return mcr.EvaluateFunction("batasMatrixKecil", latitude, longitude, radiusBaris, radiusKolom, interval);
    }


    /// <summary>
    /// Provides the standard 0-input Object interface to the batasMatrixKecil
    /// M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] batasMatrixKecil(int numArgsOut)
    {
      return mcr.EvaluateFunction(numArgsOut, "batasMatrixKecil", new Object[]{});
    }


    /// <summary>
    /// Provides the standard 1-input Object interface to the batasMatrixKecil
    /// M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude">Input argument #1</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] batasMatrixKecil(int numArgsOut, Object latitude)
    {
      return mcr.EvaluateFunction(numArgsOut, "batasMatrixKecil", latitude);
    }


    /// <summary>
    /// Provides the standard 2-input Object interface to the batasMatrixKecil
    /// M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] batasMatrixKecil(int numArgsOut, Object latitude, Object longitude)
    {
      return mcr.EvaluateFunction(numArgsOut, "batasMatrixKecil", latitude, longitude);
    }


    /// <summary>
    /// Provides the standard 3-input Object interface to the batasMatrixKecil
    /// M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <param name="radiusBaris">Input argument #3</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] batasMatrixKecil(int numArgsOut, Object latitude, Object longitude, 
                               Object radiusBaris)
    {
      return mcr.EvaluateFunction(numArgsOut, "batasMatrixKecil", latitude, longitude, radiusBaris);
    }


    /// <summary>
    /// Provides the standard 4-input Object interface to the batasMatrixKecil
    /// M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <param name="radiusBaris">Input argument #3</param>
    /// <param name="radiusKolom">Input argument #4</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] batasMatrixKecil(int numArgsOut, Object latitude, Object longitude, 
                               Object radiusBaris, Object radiusKolom)
    {
      return mcr.EvaluateFunction(numArgsOut, "batasMatrixKecil", latitude, longitude, radiusBaris, radiusKolom);
    }


    /// <summary>
    /// Provides the standard 5-input Object interface to the batasMatrixKecil
    /// M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <param name="radiusBaris">Input argument #3</param>
    /// <param name="radiusKolom">Input argument #4</param>
    /// <param name="interval">Input argument #5</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] batasMatrixKecil(int numArgsOut, Object latitude, Object longitude, 
                               Object radiusBaris, Object radiusKolom, Object interval)
    {
      return mcr.EvaluateFunction(numArgsOut, "batasMatrixKecil", latitude, longitude, radiusBaris, radiusKolom, interval);
    }


    /// <summary>
    /// Provides an interface for the batasMatrixKecil function in which the input and
    /// output
    /// arguments are specified as an array of Objects.
    /// </summary>
    /// <remarks>
    /// This method will allocate and return by reference the output argument
    /// array.<newpara></newpara>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return</param>
    /// <param name= "argsOut">Array of Object output arguments</param>
    /// <param name= "argsIn">Array of Object input arguments</param>
    /// <param name= "varArgsIn">Array of Object representing variable input
    /// arguments</param>
    ///
    [MATLABSignature("batasMatrixKecil", 5, 4, 0)]
    protected void batasMatrixKecil(int numArgsOut, ref Object[] argsOut, Object[] argsIn, params Object[] varArgsIn)
    {
        mcr.EvaluateFunctionForTypeSafeCall("batasMatrixKecil", numArgsOut, ref argsOut, argsIn, varArgsIn);
    }
    /// <summary>
    /// Provides a void output, 0-input Objectinterface to the bersihkanMemory
    /// M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    ///
    public void bersihkanMemory()
    {
      mcr.EvaluateFunction(0, "bersihkanMemory", new Object[]{});
    }


    /// <summary>
    /// Provides the standard 0-input Object interface to the bersihkanMemory M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] bersihkanMemory(int numArgsOut)
    {
      return mcr.EvaluateFunction(numArgsOut, "bersihkanMemory", new Object[]{});
    }


    /// <summary>
    /// Provides an interface for the bersihkanMemory function in which the input and
    /// output
    /// arguments are specified as an array of Objects.
    /// </summary>
    /// <remarks>
    /// This method will allocate and return by reference the output argument
    /// array.<newpara></newpara>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return</param>
    /// <param name= "argsOut">Array of Object output arguments</param>
    /// <param name= "argsIn">Array of Object input arguments</param>
    /// <param name= "varArgsIn">Array of Object representing variable input
    /// arguments</param>
    ///
    [MATLABSignature("bersihkanMemory", 0, 0, 0)]
    protected void bersihkanMemory(int numArgsOut, ref Object[] argsOut, Object[] argsIn, params Object[] varArgsIn)
    {
        mcr.EvaluateFunctionForTypeSafeCall("bersihkanMemory", numArgsOut, ref argsOut, argsIn, varArgsIn);
    }
    /// <summary>
    /// Provides a single output, 0-input Objectinterface to the generatefile M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object generatefile()
    {
      return mcr.EvaluateFunction("generatefile", new Object[]{});
    }


    /// <summary>
    /// Provides a single output, 1-input Objectinterface to the generatefile M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="latitude">Input argument #1</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object generatefile(Object latitude)
    {
      return mcr.EvaluateFunction("generatefile", latitude);
    }


    /// <summary>
    /// Provides a single output, 2-input Objectinterface to the generatefile M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object generatefile(Object latitude, Object longitude)
    {
      return mcr.EvaluateFunction("generatefile", latitude, longitude);
    }


    /// <summary>
    /// Provides the standard 0-input Object interface to the generatefile M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] generatefile(int numArgsOut)
    {
      return mcr.EvaluateFunction(numArgsOut, "generatefile", new Object[]{});
    }


    /// <summary>
    /// Provides the standard 1-input Object interface to the generatefile M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude">Input argument #1</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] generatefile(int numArgsOut, Object latitude)
    {
      return mcr.EvaluateFunction(numArgsOut, "generatefile", latitude);
    }


    /// <summary>
    /// Provides the standard 2-input Object interface to the generatefile M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] generatefile(int numArgsOut, Object latitude, Object longitude)
    {
      return mcr.EvaluateFunction(numArgsOut, "generatefile", latitude, longitude);
    }


    /// <summary>
    /// Provides an interface for the generatefile function in which the input and output
    /// arguments are specified as an array of Objects.
    /// </summary>
    /// <remarks>
    /// This method will allocate and return by reference the output argument
    /// array.<newpara></newpara>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return</param>
    /// <param name= "argsOut">Array of Object output arguments</param>
    /// <param name= "argsIn">Array of Object input arguments</param>
    /// <param name= "varArgsIn">Array of Object representing variable input
    /// arguments</param>
    ///
    [MATLABSignature("generatefile", 2, 1, 0)]
    protected void generatefile(int numArgsOut, ref Object[] argsOut, Object[] argsIn, params Object[] varArgsIn)
    {
        mcr.EvaluateFunctionForTypeSafeCall("generatefile", numArgsOut, ref argsOut, argsIn, varArgsIn);
    }
    /// <summary>
    /// Provides a void output, 0-input Objectinterface to the generatePohon M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    ///
    public void generatePohon()
    {
      mcr.EvaluateFunction(0, "generatePohon", new Object[]{});
    }


    /// <summary>
    /// Provides a void output, 1-input Objectinterface to the generatePohon M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="baris">Input argument #1</param>
    ///
    public void generatePohon(Object baris)
    {
      mcr.EvaluateFunction(0, "generatePohon", baris);
    }


    /// <summary>
    /// Provides a void output, 2-input Objectinterface to the generatePohon M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="baris">Input argument #1</param>
    /// <param name="kolom">Input argument #2</param>
    ///
    public void generatePohon(Object baris, Object kolom)
    {
      mcr.EvaluateFunction(0, "generatePohon", baris, kolom);
    }


    /// <summary>
    /// Provides a void output, 3-input Objectinterface to the generatePohon M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="baris">Input argument #1</param>
    /// <param name="kolom">Input argument #2</param>
    /// <param name="tinggi">Input argument #3</param>
    ///
    public void generatePohon(Object baris, Object kolom, Object tinggi)
    {
      mcr.EvaluateFunction(0, "generatePohon", baris, kolom, tinggi);
    }


    /// <summary>
    /// Provides a void output, 4-input Objectinterface to the generatePohon M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="baris">Input argument #1</param>
    /// <param name="kolom">Input argument #2</param>
    /// <param name="tinggi">Input argument #3</param>
    /// <param name="resolusi">Input argument #4</param>
    ///
    public void generatePohon(Object baris, Object kolom, Object tinggi, Object resolusi)
    {
      mcr.EvaluateFunction(0, "generatePohon", baris, kolom, tinggi, resolusi);
    }


    /// <summary>
    /// Provides a void output, 5-input Objectinterface to the generatePohon M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="baris">Input argument #1</param>
    /// <param name="kolom">Input argument #2</param>
    /// <param name="tinggi">Input argument #3</param>
    /// <param name="resolusi">Input argument #4</param>
    /// <param name="figur">Input argument #5</param>
    ///
    public void generatePohon(Object baris, Object kolom, Object tinggi, Object resolusi, 
                        Object figur)
    {
      mcr.EvaluateFunction(0, "generatePohon", baris, kolom, tinggi, resolusi, figur);
    }


    /// <summary>
    /// Provides the standard 0-input Object interface to the generatePohon M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] generatePohon(int numArgsOut)
    {
      return mcr.EvaluateFunction(numArgsOut, "generatePohon", new Object[]{});
    }


    /// <summary>
    /// Provides the standard 1-input Object interface to the generatePohon M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="baris">Input argument #1</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] generatePohon(int numArgsOut, Object baris)
    {
      return mcr.EvaluateFunction(numArgsOut, "generatePohon", baris);
    }


    /// <summary>
    /// Provides the standard 2-input Object interface to the generatePohon M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="baris">Input argument #1</param>
    /// <param name="kolom">Input argument #2</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] generatePohon(int numArgsOut, Object baris, Object kolom)
    {
      return mcr.EvaluateFunction(numArgsOut, "generatePohon", baris, kolom);
    }


    /// <summary>
    /// Provides the standard 3-input Object interface to the generatePohon M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="baris">Input argument #1</param>
    /// <param name="kolom">Input argument #2</param>
    /// <param name="tinggi">Input argument #3</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] generatePohon(int numArgsOut, Object baris, Object kolom, Object 
                            tinggi)
    {
      return mcr.EvaluateFunction(numArgsOut, "generatePohon", baris, kolom, tinggi);
    }


    /// <summary>
    /// Provides the standard 4-input Object interface to the generatePohon M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="baris">Input argument #1</param>
    /// <param name="kolom">Input argument #2</param>
    /// <param name="tinggi">Input argument #3</param>
    /// <param name="resolusi">Input argument #4</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] generatePohon(int numArgsOut, Object baris, Object kolom, Object 
                            tinggi, Object resolusi)
    {
      return mcr.EvaluateFunction(numArgsOut, "generatePohon", baris, kolom, tinggi, resolusi);
    }


    /// <summary>
    /// Provides the standard 5-input Object interface to the generatePohon M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="baris">Input argument #1</param>
    /// <param name="kolom">Input argument #2</param>
    /// <param name="tinggi">Input argument #3</param>
    /// <param name="resolusi">Input argument #4</param>
    /// <param name="figur">Input argument #5</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] generatePohon(int numArgsOut, Object baris, Object kolom, Object 
                            tinggi, Object resolusi, Object figur)
    {
      return mcr.EvaluateFunction(numArgsOut, "generatePohon", baris, kolom, tinggi, resolusi, figur);
    }


    /// <summary>
    /// Provides an interface for the generatePohon function in which the input and
    /// output
    /// arguments are specified as an array of Objects.
    /// </summary>
    /// <remarks>
    /// This method will allocate and return by reference the output argument
    /// array.<newpara></newpara>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return</param>
    /// <param name= "argsOut">Array of Object output arguments</param>
    /// <param name= "argsIn">Array of Object input arguments</param>
    /// <param name= "varArgsIn">Array of Object representing variable input
    /// arguments</param>
    ///
    [MATLABSignature("generatePohon", 5, 0, 0)]
    protected void generatePohon(int numArgsOut, ref Object[] argsOut, Object[] argsIn, params Object[] varArgsIn)
    {
        mcr.EvaluateFunctionForTypeSafeCall("generatePohon", numArgsOut, ref argsOut, argsIn, varArgsIn);
    }
    /// <summary>
    /// Provides a void output, 0-input Objectinterface to the generatePohonKelapa
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    ///
    public void generatePohonKelapa()
    {
      mcr.EvaluateFunction(0, "generatePohonKelapa", new Object[]{});
    }


    /// <summary>
    /// Provides a void output, 1-input Objectinterface to the generatePohonKelapa
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="baris">Input argument #1</param>
    ///
    public void generatePohonKelapa(Object baris)
    {
      mcr.EvaluateFunction(0, "generatePohonKelapa", baris);
    }


    /// <summary>
    /// Provides a void output, 2-input Objectinterface to the generatePohonKelapa
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="baris">Input argument #1</param>
    /// <param name="kolom">Input argument #2</param>
    ///
    public void generatePohonKelapa(Object baris, Object kolom)
    {
      mcr.EvaluateFunction(0, "generatePohonKelapa", baris, kolom);
    }


    /// <summary>
    /// Provides a void output, 3-input Objectinterface to the generatePohonKelapa
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="baris">Input argument #1</param>
    /// <param name="kolom">Input argument #2</param>
    /// <param name="tinggi">Input argument #3</param>
    ///
    public void generatePohonKelapa(Object baris, Object kolom, Object tinggi)
    {
      mcr.EvaluateFunction(0, "generatePohonKelapa", baris, kolom, tinggi);
    }


    /// <summary>
    /// Provides a void output, 4-input Objectinterface to the generatePohonKelapa
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="baris">Input argument #1</param>
    /// <param name="kolom">Input argument #2</param>
    /// <param name="tinggi">Input argument #3</param>
    /// <param name="resolusi">Input argument #4</param>
    ///
    public void generatePohonKelapa(Object baris, Object kolom, Object tinggi, Object 
                              resolusi)
    {
      mcr.EvaluateFunction(0, "generatePohonKelapa", baris, kolom, tinggi, resolusi);
    }


    /// <summary>
    /// Provides a void output, 5-input Objectinterface to the generatePohonKelapa
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="baris">Input argument #1</param>
    /// <param name="kolom">Input argument #2</param>
    /// <param name="tinggi">Input argument #3</param>
    /// <param name="resolusi">Input argument #4</param>
    /// <param name="figur">Input argument #5</param>
    ///
    public void generatePohonKelapa(Object baris, Object kolom, Object tinggi, Object 
                              resolusi, Object figur)
    {
      mcr.EvaluateFunction(0, "generatePohonKelapa", baris, kolom, tinggi, resolusi, figur);
    }


    /// <summary>
    /// Provides the standard 0-input Object interface to the generatePohonKelapa
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] generatePohonKelapa(int numArgsOut)
    {
      return mcr.EvaluateFunction(numArgsOut, "generatePohonKelapa", new Object[]{});
    }


    /// <summary>
    /// Provides the standard 1-input Object interface to the generatePohonKelapa
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="baris">Input argument #1</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] generatePohonKelapa(int numArgsOut, Object baris)
    {
      return mcr.EvaluateFunction(numArgsOut, "generatePohonKelapa", baris);
    }


    /// <summary>
    /// Provides the standard 2-input Object interface to the generatePohonKelapa
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="baris">Input argument #1</param>
    /// <param name="kolom">Input argument #2</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] generatePohonKelapa(int numArgsOut, Object baris, Object kolom)
    {
      return mcr.EvaluateFunction(numArgsOut, "generatePohonKelapa", baris, kolom);
    }


    /// <summary>
    /// Provides the standard 3-input Object interface to the generatePohonKelapa
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="baris">Input argument #1</param>
    /// <param name="kolom">Input argument #2</param>
    /// <param name="tinggi">Input argument #3</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] generatePohonKelapa(int numArgsOut, Object baris, Object kolom, 
                                  Object tinggi)
    {
      return mcr.EvaluateFunction(numArgsOut, "generatePohonKelapa", baris, kolom, tinggi);
    }


    /// <summary>
    /// Provides the standard 4-input Object interface to the generatePohonKelapa
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="baris">Input argument #1</param>
    /// <param name="kolom">Input argument #2</param>
    /// <param name="tinggi">Input argument #3</param>
    /// <param name="resolusi">Input argument #4</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] generatePohonKelapa(int numArgsOut, Object baris, Object kolom, 
                                  Object tinggi, Object resolusi)
    {
      return mcr.EvaluateFunction(numArgsOut, "generatePohonKelapa", baris, kolom, tinggi, resolusi);
    }


    /// <summary>
    /// Provides the standard 5-input Object interface to the generatePohonKelapa
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="baris">Input argument #1</param>
    /// <param name="kolom">Input argument #2</param>
    /// <param name="tinggi">Input argument #3</param>
    /// <param name="resolusi">Input argument #4</param>
    /// <param name="figur">Input argument #5</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] generatePohonKelapa(int numArgsOut, Object baris, Object kolom, 
                                  Object tinggi, Object resolusi, Object figur)
    {
      return mcr.EvaluateFunction(numArgsOut, "generatePohonKelapa", baris, kolom, tinggi, resolusi, figur);
    }


    /// <summary>
    /// Provides an interface for the generatePohonKelapa function in which the input and
    /// output
    /// arguments are specified as an array of Objects.
    /// </summary>
    /// <remarks>
    /// This method will allocate and return by reference the output argument
    /// array.<newpara></newpara>
    /// M-Documentation:
    /// Batang
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return</param>
    /// <param name= "argsOut">Array of Object output arguments</param>
    /// <param name= "argsIn">Array of Object input arguments</param>
    /// <param name= "varArgsIn">Array of Object representing variable input
    /// arguments</param>
    ///
    [MATLABSignature("generatePohonKelapa", 5, 0, 0)]
    protected void generatePohonKelapa(int numArgsOut, ref Object[] argsOut, Object[] argsIn, params Object[] varArgsIn)
    {
        mcr.EvaluateFunctionForTypeSafeCall("generatePohonKelapa", numArgsOut, ref argsOut, argsIn, varArgsIn);
    }
    /// <summary>
    /// Provides a single output, 0-input Objectinterface to the interpolasiLinier
    /// M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object interpolasiLinier()
    {
      return mcr.EvaluateFunction("interpolasiLinier", new Object[]{});
    }


    /// <summary>
    /// Provides a single output, 1-input Objectinterface to the interpolasiLinier
    /// M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="a">Input argument #1</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object interpolasiLinier(Object a)
    {
      return mcr.EvaluateFunction("interpolasiLinier", a);
    }


    /// <summary>
    /// Provides the standard 0-input Object interface to the interpolasiLinier
    /// M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] interpolasiLinier(int numArgsOut)
    {
      return mcr.EvaluateFunction(numArgsOut, "interpolasiLinier", new Object[]{});
    }


    /// <summary>
    /// Provides the standard 1-input Object interface to the interpolasiLinier
    /// M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="a">Input argument #1</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] interpolasiLinier(int numArgsOut, Object a)
    {
      return mcr.EvaluateFunction(numArgsOut, "interpolasiLinier", a);
    }


    /// <summary>
    /// Provides an interface for the interpolasiLinier function in which the input and
    /// output
    /// arguments are specified as an array of Objects.
    /// </summary>
    /// <remarks>
    /// This method will allocate and return by reference the output argument
    /// array.<newpara></newpara>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return</param>
    /// <param name= "argsOut">Array of Object output arguments</param>
    /// <param name= "argsIn">Array of Object input arguments</param>
    /// <param name= "varArgsIn">Array of Object representing variable input
    /// arguments</param>
    ///
    [MATLABSignature("interpolasiLinier", 1, 1, 0)]
    protected void interpolasiLinier(int numArgsOut, ref Object[] argsOut, Object[] argsIn, params Object[] varArgsIn)
    {
        mcr.EvaluateFunctionForTypeSafeCall("interpolasiLinier", numArgsOut, ref argsOut, argsIn, varArgsIn);
    }
    /// <summary>
    /// Provides a single output, 0-input Objectinterface to the mapping M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object mapping()
    {
      return mcr.EvaluateFunction("mapping", new Object[]{});
    }


    /// <summary>
    /// Provides a single output, 1-input Objectinterface to the mapping M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="latitude">Input argument #1</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object mapping(Object latitude)
    {
      return mcr.EvaluateFunction("mapping", latitude);
    }


    /// <summary>
    /// Provides a single output, 2-input Objectinterface to the mapping M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object mapping(Object latitude, Object longitude)
    {
      return mcr.EvaluateFunction("mapping", latitude, longitude);
    }


    /// <summary>
    /// Provides the standard 0-input Object interface to the mapping M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] mapping(int numArgsOut)
    {
      return mcr.EvaluateFunction(numArgsOut, "mapping", new Object[]{});
    }


    /// <summary>
    /// Provides the standard 1-input Object interface to the mapping M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude">Input argument #1</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] mapping(int numArgsOut, Object latitude)
    {
      return mcr.EvaluateFunction(numArgsOut, "mapping", latitude);
    }


    /// <summary>
    /// Provides the standard 2-input Object interface to the mapping M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] mapping(int numArgsOut, Object latitude, Object longitude)
    {
      return mcr.EvaluateFunction(numArgsOut, "mapping", latitude, longitude);
    }


    /// <summary>
    /// Provides an interface for the mapping function in which the input and output
    /// arguments are specified as an array of Objects.
    /// </summary>
    /// <remarks>
    /// This method will allocate and return by reference the output argument
    /// array.<newpara></newpara>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return</param>
    /// <param name= "argsOut">Array of Object output arguments</param>
    /// <param name= "argsIn">Array of Object input arguments</param>
    /// <param name= "varArgsIn">Array of Object representing variable input
    /// arguments</param>
    ///
    [MATLABSignature("mapping", 2, 2, 0)]
    protected void mapping(int numArgsOut, ref Object[] argsOut, Object[] argsIn, params Object[] varArgsIn)
    {
        mcr.EvaluateFunctionForTypeSafeCall("mapping", numArgsOut, ref argsOut, argsIn, varArgsIn);
    }
    /// <summary>
    /// Provides a single output, 0-input Objectinterface to the
    /// mappingMatrixtoNearestCoordinat M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object mappingMatrixtoNearestCoordinat()
    {
      return mcr.EvaluateFunction("mappingMatrixtoNearestCoordinat", new Object[]{});
    }


    /// <summary>
    /// Provides a single output, 1-input Objectinterface to the
    /// mappingMatrixtoNearestCoordinat M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="barisMariks">Input argument #1</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object mappingMatrixtoNearestCoordinat(Object barisMariks)
    {
      return mcr.EvaluateFunction("mappingMatrixtoNearestCoordinat", barisMariks);
    }


    /// <summary>
    /// Provides a single output, 2-input Objectinterface to the
    /// mappingMatrixtoNearestCoordinat M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="barisMariks">Input argument #1</param>
    /// <param name="kolomMatriks">Input argument #2</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object mappingMatrixtoNearestCoordinat(Object barisMariks, Object kolomMatriks)
    {
      return mcr.EvaluateFunction("mappingMatrixtoNearestCoordinat", barisMariks, kolomMatriks);
    }


    /// <summary>
    /// Provides a single output, 3-input Objectinterface to the
    /// mappingMatrixtoNearestCoordinat M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="barisMariks">Input argument #1</param>
    /// <param name="kolomMatriks">Input argument #2</param>
    /// <param name="latitude_in1">Input argument #3</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object mappingMatrixtoNearestCoordinat(Object barisMariks, Object 
                                            kolomMatriks, Object latitude_in1)
    {
      return mcr.EvaluateFunction("mappingMatrixtoNearestCoordinat", barisMariks, kolomMatriks, latitude_in1);
    }


    /// <summary>
    /// Provides a single output, 4-input Objectinterface to the
    /// mappingMatrixtoNearestCoordinat M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="barisMariks">Input argument #1</param>
    /// <param name="kolomMatriks">Input argument #2</param>
    /// <param name="latitude_in1">Input argument #3</param>
    /// <param name="longitude_in1">Input argument #4</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object mappingMatrixtoNearestCoordinat(Object barisMariks, Object 
                                            kolomMatriks, Object latitude_in1, Object 
                                            longitude_in1)
    {
      return mcr.EvaluateFunction("mappingMatrixtoNearestCoordinat", barisMariks, kolomMatriks, latitude_in1, longitude_in1);
    }


    /// <summary>
    /// Provides the standard 0-input Object interface to the
    /// mappingMatrixtoNearestCoordinat M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] mappingMatrixtoNearestCoordinat(int numArgsOut)
    {
      return mcr.EvaluateFunction(numArgsOut, "mappingMatrixtoNearestCoordinat", new Object[]{});
    }


    /// <summary>
    /// Provides the standard 1-input Object interface to the
    /// mappingMatrixtoNearestCoordinat M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="barisMariks">Input argument #1</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] mappingMatrixtoNearestCoordinat(int numArgsOut, Object barisMariks)
    {
      return mcr.EvaluateFunction(numArgsOut, "mappingMatrixtoNearestCoordinat", barisMariks);
    }


    /// <summary>
    /// Provides the standard 2-input Object interface to the
    /// mappingMatrixtoNearestCoordinat M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="barisMariks">Input argument #1</param>
    /// <param name="kolomMatriks">Input argument #2</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] mappingMatrixtoNearestCoordinat(int numArgsOut, Object barisMariks, 
                                              Object kolomMatriks)
    {
      return mcr.EvaluateFunction(numArgsOut, "mappingMatrixtoNearestCoordinat", barisMariks, kolomMatriks);
    }


    /// <summary>
    /// Provides the standard 3-input Object interface to the
    /// mappingMatrixtoNearestCoordinat M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="barisMariks">Input argument #1</param>
    /// <param name="kolomMatriks">Input argument #2</param>
    /// <param name="latitude_in1">Input argument #3</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] mappingMatrixtoNearestCoordinat(int numArgsOut, Object barisMariks, 
                                              Object kolomMatriks, Object latitude_in1)
    {
      return mcr.EvaluateFunction(numArgsOut, "mappingMatrixtoNearestCoordinat", barisMariks, kolomMatriks, latitude_in1);
    }


    /// <summary>
    /// Provides the standard 4-input Object interface to the
    /// mappingMatrixtoNearestCoordinat M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="barisMariks">Input argument #1</param>
    /// <param name="kolomMatriks">Input argument #2</param>
    /// <param name="latitude_in1">Input argument #3</param>
    /// <param name="longitude_in1">Input argument #4</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] mappingMatrixtoNearestCoordinat(int numArgsOut, Object barisMariks, 
                                              Object kolomMatriks, Object latitude_in1, 
                                              Object longitude_in1)
    {
      return mcr.EvaluateFunction(numArgsOut, "mappingMatrixtoNearestCoordinat", barisMariks, kolomMatriks, latitude_in1, longitude_in1);
    }


    /// <summary>
    /// Provides an interface for the mappingMatrixtoNearestCoordinat function in which
    /// the input and output
    /// arguments are specified as an array of Objects.
    /// </summary>
    /// <remarks>
    /// This method will allocate and return by reference the output argument
    /// array.<newpara></newpara>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return</param>
    /// <param name= "argsOut">Array of Object output arguments</param>
    /// <param name= "argsIn">Array of Object input arguments</param>
    /// <param name= "varArgsIn">Array of Object representing variable input
    /// arguments</param>
    ///
    [MATLABSignature("mappingMatrixtoNearestCoordinat", 4, 2, 0)]
    protected void mappingMatrixtoNearestCoordinat(int numArgsOut, ref Object[] argsOut, Object[] argsIn, params Object[] varArgsIn)
    {
        mcr.EvaluateFunctionForTypeSafeCall("mappingMatrixtoNearestCoordinat", numArgsOut, ref argsOut, argsIn, varArgsIn);
    }
    /// <summary>
    /// Provides a single output, 0-input Objectinterface to the mappingObjek M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object mappingObjek()
    {
      return mcr.EvaluateFunction("mappingObjek", new Object[]{});
    }


    /// <summary>
    /// Provides a single output, 1-input Objectinterface to the mappingObjek M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="latitude">Input argument #1</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object mappingObjek(Object latitude)
    {
      return mcr.EvaluateFunction("mappingObjek", latitude);
    }


    /// <summary>
    /// Provides a single output, 2-input Objectinterface to the mappingObjek M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object mappingObjek(Object latitude, Object longitude)
    {
      return mcr.EvaluateFunction("mappingObjek", latitude, longitude);
    }


    /// <summary>
    /// Provides a single output, 3-input Objectinterface to the mappingObjek M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <param name="latKecilMin">Input argument #3</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object mappingObjek(Object latitude, Object longitude, Object latKecilMin)
    {
      return mcr.EvaluateFunction("mappingObjek", latitude, longitude, latKecilMin);
    }


    /// <summary>
    /// Provides a single output, 4-input Objectinterface to the mappingObjek M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <param name="latKecilMin">Input argument #3</param>
    /// <param name="latKecilMax">Input argument #4</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object mappingObjek(Object latitude, Object longitude, Object latKecilMin, 
                         Object latKecilMax)
    {
      return mcr.EvaluateFunction("mappingObjek", latitude, longitude, latKecilMin, latKecilMax);
    }


    /// <summary>
    /// Provides a single output, 5-input Objectinterface to the mappingObjek M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <param name="latKecilMin">Input argument #3</param>
    /// <param name="latKecilMax">Input argument #4</param>
    /// <param name="longKecilMin">Input argument #5</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object mappingObjek(Object latitude, Object longitude, Object latKecilMin, 
                         Object latKecilMax, Object longKecilMin)
    {
      return mcr.EvaluateFunction("mappingObjek", latitude, longitude, latKecilMin, latKecilMax, longKecilMin);
    }


    /// <summary>
    /// Provides a single output, 6-input Objectinterface to the mappingObjek M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <param name="latKecilMin">Input argument #3</param>
    /// <param name="latKecilMax">Input argument #4</param>
    /// <param name="longKecilMin">Input argument #5</param>
    /// <param name="longKecilMax">Input argument #6</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object mappingObjek(Object latitude, Object longitude, Object latKecilMin, 
                         Object latKecilMax, Object longKecilMin, Object longKecilMax)
    {
      return mcr.EvaluateFunction("mappingObjek", latitude, longitude, latKecilMin, latKecilMax, longKecilMin, longKecilMax);
    }


    /// <summary>
    /// Provides a single output, 7-input Objectinterface to the mappingObjek M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <param name="latKecilMin">Input argument #3</param>
    /// <param name="latKecilMax">Input argument #4</param>
    /// <param name="longKecilMin">Input argument #5</param>
    /// <param name="longKecilMax">Input argument #6</param>
    /// <param name="ukuran_baris">Input argument #7</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object mappingObjek(Object latitude, Object longitude, Object latKecilMin, 
                         Object latKecilMax, Object longKecilMin, Object longKecilMax, 
                         Object ukuran_baris)
    {
      return mcr.EvaluateFunction("mappingObjek", latitude, longitude, latKecilMin, latKecilMax, longKecilMin, longKecilMax, ukuran_baris);
    }


    /// <summary>
    /// Provides a single output, 8-input Objectinterface to the mappingObjek M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <param name="latKecilMin">Input argument #3</param>
    /// <param name="latKecilMax">Input argument #4</param>
    /// <param name="longKecilMin">Input argument #5</param>
    /// <param name="longKecilMax">Input argument #6</param>
    /// <param name="ukuran_baris">Input argument #7</param>
    /// <param name="ukuran_kolom">Input argument #8</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object mappingObjek(Object latitude, Object longitude, Object latKecilMin, 
                         Object latKecilMax, Object longKecilMin, Object longKecilMax, 
                         Object ukuran_baris, Object ukuran_kolom)
    {
      return mcr.EvaluateFunction("mappingObjek", latitude, longitude, latKecilMin, latKecilMax, longKecilMin, longKecilMax, ukuran_baris, ukuran_kolom);
    }


    /// <summary>
    /// Provides the standard 0-input Object interface to the mappingObjek M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] mappingObjek(int numArgsOut)
    {
      return mcr.EvaluateFunction(numArgsOut, "mappingObjek", new Object[]{});
    }


    /// <summary>
    /// Provides the standard 1-input Object interface to the mappingObjek M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude">Input argument #1</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] mappingObjek(int numArgsOut, Object latitude)
    {
      return mcr.EvaluateFunction(numArgsOut, "mappingObjek", latitude);
    }


    /// <summary>
    /// Provides the standard 2-input Object interface to the mappingObjek M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] mappingObjek(int numArgsOut, Object latitude, Object longitude)
    {
      return mcr.EvaluateFunction(numArgsOut, "mappingObjek", latitude, longitude);
    }


    /// <summary>
    /// Provides the standard 3-input Object interface to the mappingObjek M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <param name="latKecilMin">Input argument #3</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] mappingObjek(int numArgsOut, Object latitude, Object longitude, 
                           Object latKecilMin)
    {
      return mcr.EvaluateFunction(numArgsOut, "mappingObjek", latitude, longitude, latKecilMin);
    }


    /// <summary>
    /// Provides the standard 4-input Object interface to the mappingObjek M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <param name="latKecilMin">Input argument #3</param>
    /// <param name="latKecilMax">Input argument #4</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] mappingObjek(int numArgsOut, Object latitude, Object longitude, 
                           Object latKecilMin, Object latKecilMax)
    {
      return mcr.EvaluateFunction(numArgsOut, "mappingObjek", latitude, longitude, latKecilMin, latKecilMax);
    }


    /// <summary>
    /// Provides the standard 5-input Object interface to the mappingObjek M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <param name="latKecilMin">Input argument #3</param>
    /// <param name="latKecilMax">Input argument #4</param>
    /// <param name="longKecilMin">Input argument #5</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] mappingObjek(int numArgsOut, Object latitude, Object longitude, 
                           Object latKecilMin, Object latKecilMax, Object longKecilMin)
    {
      return mcr.EvaluateFunction(numArgsOut, "mappingObjek", latitude, longitude, latKecilMin, latKecilMax, longKecilMin);
    }


    /// <summary>
    /// Provides the standard 6-input Object interface to the mappingObjek M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <param name="latKecilMin">Input argument #3</param>
    /// <param name="latKecilMax">Input argument #4</param>
    /// <param name="longKecilMin">Input argument #5</param>
    /// <param name="longKecilMax">Input argument #6</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] mappingObjek(int numArgsOut, Object latitude, Object longitude, 
                           Object latKecilMin, Object latKecilMax, Object longKecilMin, 
                           Object longKecilMax)
    {
      return mcr.EvaluateFunction(numArgsOut, "mappingObjek", latitude, longitude, latKecilMin, latKecilMax, longKecilMin, longKecilMax);
    }


    /// <summary>
    /// Provides the standard 7-input Object interface to the mappingObjek M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <param name="latKecilMin">Input argument #3</param>
    /// <param name="latKecilMax">Input argument #4</param>
    /// <param name="longKecilMin">Input argument #5</param>
    /// <param name="longKecilMax">Input argument #6</param>
    /// <param name="ukuran_baris">Input argument #7</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] mappingObjek(int numArgsOut, Object latitude, Object longitude, 
                           Object latKecilMin, Object latKecilMax, Object longKecilMin, 
                           Object longKecilMax, Object ukuran_baris)
    {
      return mcr.EvaluateFunction(numArgsOut, "mappingObjek", latitude, longitude, latKecilMin, latKecilMax, longKecilMin, longKecilMax, ukuran_baris);
    }


    /// <summary>
    /// Provides the standard 8-input Object interface to the mappingObjek M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude">Input argument #1</param>
    /// <param name="longitude">Input argument #2</param>
    /// <param name="latKecilMin">Input argument #3</param>
    /// <param name="latKecilMax">Input argument #4</param>
    /// <param name="longKecilMin">Input argument #5</param>
    /// <param name="longKecilMax">Input argument #6</param>
    /// <param name="ukuran_baris">Input argument #7</param>
    /// <param name="ukuran_kolom">Input argument #8</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] mappingObjek(int numArgsOut, Object latitude, Object longitude, 
                           Object latKecilMin, Object latKecilMax, Object longKecilMin, 
                           Object longKecilMax, Object ukuran_baris, Object ukuran_kolom)
    {
      return mcr.EvaluateFunction(numArgsOut, "mappingObjek", latitude, longitude, latKecilMin, latKecilMax, longKecilMin, longKecilMax, ukuran_baris, ukuran_kolom);
    }


    /// <summary>
    /// Provides an interface for the mappingObjek function in which the input and output
    /// arguments are specified as an array of Objects.
    /// </summary>
    /// <remarks>
    /// This method will allocate and return by reference the output argument
    /// array.<newpara></newpara>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return</param>
    /// <param name= "argsOut">Array of Object output arguments</param>
    /// <param name= "argsIn">Array of Object input arguments</param>
    /// <param name= "varArgsIn">Array of Object representing variable input
    /// arguments</param>
    ///
    [MATLABSignature("mappingObjek", 8, 2, 0)]
    protected void mappingObjek(int numArgsOut, ref Object[] argsOut, Object[] argsIn, params Object[] varArgsIn)
    {
        mcr.EvaluateFunctionForTypeSafeCall("mappingObjek", numArgsOut, ref argsOut, argsIn, varArgsIn);
    }
    /// <summary>
    /// Provides a single output, 0-input Objectinterface to the normalisasi M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object normalisasi()
    {
      return mcr.EvaluateFunction("normalisasi", new Object[]{});
    }


    /// <summary>
    /// Provides a single output, 1-input Objectinterface to the normalisasi M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="latitude1">Input argument #1</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object normalisasi(Object latitude1)
    {
      return mcr.EvaluateFunction("normalisasi", latitude1);
    }


    /// <summary>
    /// Provides a single output, 2-input Objectinterface to the normalisasi M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="latitude1">Input argument #1</param>
    /// <param name="longitude1">Input argument #2</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object normalisasi(Object latitude1, Object longitude1)
    {
      return mcr.EvaluateFunction("normalisasi", latitude1, longitude1);
    }


    /// <summary>
    /// Provides a single output, 3-input Objectinterface to the normalisasi M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="latitude1">Input argument #1</param>
    /// <param name="longitude1">Input argument #2</param>
    /// <param name="latitude2">Input argument #3</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object normalisasi(Object latitude1, Object longitude1, Object latitude2)
    {
      return mcr.EvaluateFunction("normalisasi", latitude1, longitude1, latitude2);
    }


    /// <summary>
    /// Provides a single output, 4-input Objectinterface to the normalisasi M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="latitude1">Input argument #1</param>
    /// <param name="longitude1">Input argument #2</param>
    /// <param name="latitude2">Input argument #3</param>
    /// <param name="longitude2">Input argument #4</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object normalisasi(Object latitude1, Object longitude1, Object latitude2, 
                        Object longitude2)
    {
      return mcr.EvaluateFunction("normalisasi", latitude1, longitude1, latitude2, longitude2);
    }


    /// <summary>
    /// Provides a single output, 5-input Objectinterface to the normalisasi M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="latitude1">Input argument #1</param>
    /// <param name="longitude1">Input argument #2</param>
    /// <param name="latitude2">Input argument #3</param>
    /// <param name="longitude2">Input argument #4</param>
    /// <param name="batasRadius">Input argument #5</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object normalisasi(Object latitude1, Object longitude1, Object latitude2, 
                        Object longitude2, Object batasRadius)
    {
      return mcr.EvaluateFunction("normalisasi", latitude1, longitude1, latitude2, longitude2, batasRadius);
    }


    /// <summary>
    /// Provides the standard 0-input Object interface to the normalisasi M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] normalisasi(int numArgsOut)
    {
      return mcr.EvaluateFunction(numArgsOut, "normalisasi", new Object[]{});
    }


    /// <summary>
    /// Provides the standard 1-input Object interface to the normalisasi M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude1">Input argument #1</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] normalisasi(int numArgsOut, Object latitude1)
    {
      return mcr.EvaluateFunction(numArgsOut, "normalisasi", latitude1);
    }


    /// <summary>
    /// Provides the standard 2-input Object interface to the normalisasi M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude1">Input argument #1</param>
    /// <param name="longitude1">Input argument #2</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] normalisasi(int numArgsOut, Object latitude1, Object longitude1)
    {
      return mcr.EvaluateFunction(numArgsOut, "normalisasi", latitude1, longitude1);
    }


    /// <summary>
    /// Provides the standard 3-input Object interface to the normalisasi M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude1">Input argument #1</param>
    /// <param name="longitude1">Input argument #2</param>
    /// <param name="latitude2">Input argument #3</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] normalisasi(int numArgsOut, Object latitude1, Object longitude1, 
                          Object latitude2)
    {
      return mcr.EvaluateFunction(numArgsOut, "normalisasi", latitude1, longitude1, latitude2);
    }


    /// <summary>
    /// Provides the standard 4-input Object interface to the normalisasi M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude1">Input argument #1</param>
    /// <param name="longitude1">Input argument #2</param>
    /// <param name="latitude2">Input argument #3</param>
    /// <param name="longitude2">Input argument #4</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] normalisasi(int numArgsOut, Object latitude1, Object longitude1, 
                          Object latitude2, Object longitude2)
    {
      return mcr.EvaluateFunction(numArgsOut, "normalisasi", latitude1, longitude1, latitude2, longitude2);
    }


    /// <summary>
    /// Provides the standard 5-input Object interface to the normalisasi M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="latitude1">Input argument #1</param>
    /// <param name="longitude1">Input argument #2</param>
    /// <param name="latitude2">Input argument #3</param>
    /// <param name="longitude2">Input argument #4</param>
    /// <param name="batasRadius">Input argument #5</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] normalisasi(int numArgsOut, Object latitude1, Object longitude1, 
                          Object latitude2, Object longitude2, Object batasRadius)
    {
      return mcr.EvaluateFunction(numArgsOut, "normalisasi", latitude1, longitude1, latitude2, longitude2, batasRadius);
    }


    /// <summary>
    /// Provides an interface for the normalisasi function in which the input and output
    /// arguments are specified as an array of Objects.
    /// </summary>
    /// <remarks>
    /// This method will allocate and return by reference the output argument
    /// array.<newpara></newpara>
    /// M-Documentation:
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return</param>
    /// <param name= "argsOut">Array of Object output arguments</param>
    /// <param name= "argsIn">Array of Object input arguments</param>
    /// <param name= "varArgsIn">Array of Object representing variable input
    /// arguments</param>
    ///
    [MATLABSignature("normalisasi", 5, 5, 0)]
    protected void normalisasi(int numArgsOut, ref Object[] argsOut, Object[] argsIn, params Object[] varArgsIn)
    {
        mcr.EvaluateFunctionForTypeSafeCall("normalisasi", numArgsOut, ref argsOut, argsIn, varArgsIn);
    }
    /// <summary>
    /// Provides a single output, 0-input Objectinterface to the pilih M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// ================================================
    /// {
    /// </remarks>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object pilih()
    {
      return mcr.EvaluateFunction("pilih", new Object[]{});
    }


    /// <summary>
    /// Provides a single output, 1-input Objectinterface to the pilih M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// ================================================
    /// {
    /// </remarks>
    /// <param name="baris_in1">Input argument #1</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object pilih(Object baris_in1)
    {
      return mcr.EvaluateFunction("pilih", baris_in1);
    }


    /// <summary>
    /// Provides a single output, 2-input Objectinterface to the pilih M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// ================================================
    /// {
    /// </remarks>
    /// <param name="baris_in1">Input argument #1</param>
    /// <param name="kolom_in1">Input argument #2</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object pilih(Object baris_in1, Object kolom_in1)
    {
      return mcr.EvaluateFunction("pilih", baris_in1, kolom_in1);
    }


    /// <summary>
    /// Provides a single output, 3-input Objectinterface to the pilih M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// ================================================
    /// {
    /// </remarks>
    /// <param name="baris_in1">Input argument #1</param>
    /// <param name="kolom_in1">Input argument #2</param>
    /// <param name="latitude">Input argument #3</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object pilih(Object baris_in1, Object kolom_in1, Object latitude)
    {
      return mcr.EvaluateFunction("pilih", baris_in1, kolom_in1, latitude);
    }


    /// <summary>
    /// Provides a single output, 4-input Objectinterface to the pilih M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// ================================================
    /// {
    /// </remarks>
    /// <param name="baris_in1">Input argument #1</param>
    /// <param name="kolom_in1">Input argument #2</param>
    /// <param name="latitude">Input argument #3</param>
    /// <param name="longitude">Input argument #4</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object pilih(Object baris_in1, Object kolom_in1, Object latitude, Object 
                  longitude)
    {
      return mcr.EvaluateFunction("pilih", baris_in1, kolom_in1, latitude, longitude);
    }


    /// <summary>
    /// Provides the standard 0-input Object interface to the pilih M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// ================================================
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] pilih(int numArgsOut)
    {
      return mcr.EvaluateFunction(numArgsOut, "pilih", new Object[]{});
    }


    /// <summary>
    /// Provides the standard 1-input Object interface to the pilih M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// ================================================
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="baris_in1">Input argument #1</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] pilih(int numArgsOut, Object baris_in1)
    {
      return mcr.EvaluateFunction(numArgsOut, "pilih", baris_in1);
    }


    /// <summary>
    /// Provides the standard 2-input Object interface to the pilih M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// ================================================
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="baris_in1">Input argument #1</param>
    /// <param name="kolom_in1">Input argument #2</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] pilih(int numArgsOut, Object baris_in1, Object kolom_in1)
    {
      return mcr.EvaluateFunction(numArgsOut, "pilih", baris_in1, kolom_in1);
    }


    /// <summary>
    /// Provides the standard 3-input Object interface to the pilih M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// ================================================
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="baris_in1">Input argument #1</param>
    /// <param name="kolom_in1">Input argument #2</param>
    /// <param name="latitude">Input argument #3</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] pilih(int numArgsOut, Object baris_in1, Object kolom_in1, Object 
                    latitude)
    {
      return mcr.EvaluateFunction(numArgsOut, "pilih", baris_in1, kolom_in1, latitude);
    }


    /// <summary>
    /// Provides the standard 4-input Object interface to the pilih M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// ================================================
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="baris_in1">Input argument #1</param>
    /// <param name="kolom_in1">Input argument #2</param>
    /// <param name="latitude">Input argument #3</param>
    /// <param name="longitude">Input argument #4</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] pilih(int numArgsOut, Object baris_in1, Object kolom_in1, Object 
                    latitude, Object longitude)
    {
      return mcr.EvaluateFunction(numArgsOut, "pilih", baris_in1, kolom_in1, latitude, longitude);
    }


    /// <summary>
    /// Provides an interface for the pilih function in which the input and output
    /// arguments are specified as an array of Objects.
    /// </summary>
    /// <remarks>
    /// This method will allocate and return by reference the output argument
    /// array.<newpara></newpara>
    /// M-Documentation:
    /// ================================================
    /// {
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return</param>
    /// <param name= "argsOut">Array of Object output arguments</param>
    /// <param name= "argsIn">Array of Object input arguments</param>
    /// <param name= "varArgsIn">Array of Object representing variable input
    /// arguments</param>
    ///
    [MATLABSignature("pilih", 4, 3, 0)]
    protected void pilih(int numArgsOut, ref Object[] argsOut, Object[] argsIn, params Object[] varArgsIn)
    {
        mcr.EvaluateFunctionForTypeSafeCall("pilih", numArgsOut, ref argsOut, argsIn, varArgsIn);
    }
    /// <summary>
    /// Provides a single output, 0-input Objectinterface to the seleksiBF M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object seleksiBF()
    {
      return mcr.EvaluateFunction("seleksiBF", new Object[]{});
    }


    /// <summary>
    /// Provides a single output, 1-input Objectinterface to the seleksiBF M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="barisKoma">Input argument #1</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object seleksiBF(Object barisKoma)
    {
      return mcr.EvaluateFunction("seleksiBF", barisKoma);
    }


    /// <summary>
    /// Provides a single output, 2-input Objectinterface to the seleksiBF M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="barisKoma">Input argument #1</param>
    /// <param name="kolomKoma">Input argument #2</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object seleksiBF(Object barisKoma, Object kolomKoma)
    {
      return mcr.EvaluateFunction("seleksiBF", barisKoma, kolomKoma);
    }


    /// <summary>
    /// Provides the standard 0-input Object interface to the seleksiBF M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] seleksiBF(int numArgsOut)
    {
      return mcr.EvaluateFunction(numArgsOut, "seleksiBF", new Object[]{});
    }


    /// <summary>
    /// Provides the standard 1-input Object interface to the seleksiBF M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="barisKoma">Input argument #1</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] seleksiBF(int numArgsOut, Object barisKoma)
    {
      return mcr.EvaluateFunction(numArgsOut, "seleksiBF", barisKoma);
    }


    /// <summary>
    /// Provides the standard 2-input Object interface to the seleksiBF M-function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="barisKoma">Input argument #1</param>
    /// <param name="kolomKoma">Input argument #2</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] seleksiBF(int numArgsOut, Object barisKoma, Object kolomKoma)
    {
      return mcr.EvaluateFunction(numArgsOut, "seleksiBF", barisKoma, kolomKoma);
    }


    /// <summary>
    /// Provides an interface for the seleksiBF function in which the input and output
    /// arguments are specified as an array of Objects.
    /// </summary>
    /// <remarks>
    /// This method will allocate and return by reference the output argument
    /// array.<newpara></newpara>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return</param>
    /// <param name= "argsOut">Array of Object output arguments</param>
    /// <param name= "argsIn">Array of Object input arguments</param>
    /// <param name= "varArgsIn">Array of Object representing variable input
    /// arguments</param>
    ///
    [MATLABSignature("seleksiBF", 2, 2, 0)]
    protected void seleksiBF(int numArgsOut, ref Object[] argsOut, Object[] argsIn, params Object[] varArgsIn)
    {
        mcr.EvaluateFunctionForTypeSafeCall("seleksiBF", numArgsOut, ref argsOut, argsIn, varArgsIn);
    }
    /// <summary>
    /// Provides a single output, 0-input Objectinterface to the seleksiRHD M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// round half down 0.0 0.1 0.2 0.3 0.4 0.5 dibulatkan ke  ke 0
    /// 0.6 0.7 0.8 0.9 1.0     dibulatkan ke  ke 1
    /// </remarks>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object seleksiRHD()
    {
      return mcr.EvaluateFunction("seleksiRHD", new Object[]{});
    }


    /// <summary>
    /// Provides a single output, 1-input Objectinterface to the seleksiRHD M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// round half down 0.0 0.1 0.2 0.3 0.4 0.5 dibulatkan ke  ke 0
    /// 0.6 0.7 0.8 0.9 1.0     dibulatkan ke  ke 1
    /// </remarks>
    /// <param name="barisKoma">Input argument #1</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object seleksiRHD(Object barisKoma)
    {
      return mcr.EvaluateFunction("seleksiRHD", barisKoma);
    }


    /// <summary>
    /// Provides a single output, 2-input Objectinterface to the seleksiRHD M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// round half down 0.0 0.1 0.2 0.3 0.4 0.5 dibulatkan ke  ke 0
    /// 0.6 0.7 0.8 0.9 1.0     dibulatkan ke  ke 1
    /// </remarks>
    /// <param name="barisKoma">Input argument #1</param>
    /// <param name="kolomKoma">Input argument #2</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object seleksiRHD(Object barisKoma, Object kolomKoma)
    {
      return mcr.EvaluateFunction("seleksiRHD", barisKoma, kolomKoma);
    }


    /// <summary>
    /// Provides the standard 0-input Object interface to the seleksiRHD M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// round half down 0.0 0.1 0.2 0.3 0.4 0.5 dibulatkan ke  ke 0
    /// 0.6 0.7 0.8 0.9 1.0     dibulatkan ke  ke 1
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] seleksiRHD(int numArgsOut)
    {
      return mcr.EvaluateFunction(numArgsOut, "seleksiRHD", new Object[]{});
    }


    /// <summary>
    /// Provides the standard 1-input Object interface to the seleksiRHD M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// round half down 0.0 0.1 0.2 0.3 0.4 0.5 dibulatkan ke  ke 0
    /// 0.6 0.7 0.8 0.9 1.0     dibulatkan ke  ke 1
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="barisKoma">Input argument #1</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] seleksiRHD(int numArgsOut, Object barisKoma)
    {
      return mcr.EvaluateFunction(numArgsOut, "seleksiRHD", barisKoma);
    }


    /// <summary>
    /// Provides the standard 2-input Object interface to the seleksiRHD M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// round half down 0.0 0.1 0.2 0.3 0.4 0.5 dibulatkan ke  ke 0
    /// 0.6 0.7 0.8 0.9 1.0     dibulatkan ke  ke 1
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="barisKoma">Input argument #1</param>
    /// <param name="kolomKoma">Input argument #2</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] seleksiRHD(int numArgsOut, Object barisKoma, Object kolomKoma)
    {
      return mcr.EvaluateFunction(numArgsOut, "seleksiRHD", barisKoma, kolomKoma);
    }


    /// <summary>
    /// Provides an interface for the seleksiRHD function in which the input and output
    /// arguments are specified as an array of Objects.
    /// </summary>
    /// <remarks>
    /// This method will allocate and return by reference the output argument
    /// array.<newpara></newpara>
    /// M-Documentation:
    /// round half down 0.0 0.1 0.2 0.3 0.4 0.5 dibulatkan ke  ke 0
    /// 0.6 0.7 0.8 0.9 1.0     dibulatkan ke  ke 1
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return</param>
    /// <param name= "argsOut">Array of Object output arguments</param>
    /// <param name= "argsIn">Array of Object input arguments</param>
    /// <param name= "varArgsIn">Array of Object representing variable input
    /// arguments</param>
    ///
    [MATLABSignature("seleksiRHD", 2, 2, 0)]
    protected void seleksiRHD(int numArgsOut, ref Object[] argsOut, Object[] argsIn, params Object[] varArgsIn)
    {
        mcr.EvaluateFunctionForTypeSafeCall("seleksiRHD", numArgsOut, ref argsOut, argsIn, varArgsIn);
    }
    /// <summary>
    /// Provides a single output, 0-input Objectinterface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object visualisasiDuaInputan()
    {
      return mcr.EvaluateFunction("visualisasiDuaInputan", new Object[]{});
    }


    /// <summary>
    /// Provides a single output, 1-input Objectinterface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="nama">Input argument #1</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object visualisasiDuaInputan(Object nama)
    {
      return mcr.EvaluateFunction("visualisasiDuaInputan", nama);
    }


    /// <summary>
    /// Provides a single output, 2-input Objectinterface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude1">Input argument #2</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object visualisasiDuaInputan(Object nama, Object latitude1)
    {
      return mcr.EvaluateFunction("visualisasiDuaInputan", nama, latitude1);
    }


    /// <summary>
    /// Provides a single output, 3-input Objectinterface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude1">Input argument #2</param>
    /// <param name="longitude1">Input argument #3</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object visualisasiDuaInputan(Object nama, Object latitude1, Object longitude1)
    {
      return mcr.EvaluateFunction("visualisasiDuaInputan", nama, latitude1, longitude1);
    }


    /// <summary>
    /// Provides a single output, 4-input Objectinterface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude1">Input argument #2</param>
    /// <param name="longitude1">Input argument #3</param>
    /// <param name="latitude2">Input argument #4</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object visualisasiDuaInputan(Object nama, Object latitude1, Object longitude1, 
                                  Object latitude2)
    {
      return mcr.EvaluateFunction("visualisasiDuaInputan", nama, latitude1, longitude1, latitude2);
    }


    /// <summary>
    /// Provides a single output, 5-input Objectinterface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude1">Input argument #2</param>
    /// <param name="longitude1">Input argument #3</param>
    /// <param name="latitude2">Input argument #4</param>
    /// <param name="longitude2">Input argument #5</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object visualisasiDuaInputan(Object nama, Object latitude1, Object longitude1, 
                                  Object latitude2, Object longitude2)
    {
      return mcr.EvaluateFunction("visualisasiDuaInputan", nama, latitude1, longitude1, latitude2, longitude2);
    }


    /// <summary>
    /// Provides a single output, 6-input Objectinterface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude1">Input argument #2</param>
    /// <param name="longitude1">Input argument #3</param>
    /// <param name="latitude2">Input argument #4</param>
    /// <param name="longitude2">Input argument #5</param>
    /// <param name="batasRadius">Input argument #6</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object visualisasiDuaInputan(Object nama, Object latitude1, Object longitude1, 
                                  Object latitude2, Object longitude2, Object batasRadius)
    {
      return mcr.EvaluateFunction("visualisasiDuaInputan", nama, latitude1, longitude1, latitude2, longitude2, batasRadius);
    }


    /// <summary>
    /// Provides a single output, 7-input Objectinterface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude1">Input argument #2</param>
    /// <param name="longitude1">Input argument #3</param>
    /// <param name="latitude2">Input argument #4</param>
    /// <param name="longitude2">Input argument #5</param>
    /// <param name="batasRadius">Input argument #6</param>
    /// <param name="seleksi">Input argument #7</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object visualisasiDuaInputan(Object nama, Object latitude1, Object longitude1, 
                                  Object latitude2, Object longitude2, Object 
                                  batasRadius, Object seleksi)
    {
      return mcr.EvaluateFunction("visualisasiDuaInputan", nama, latitude1, longitude1, latitude2, longitude2, batasRadius, seleksi);
    }


    /// <summary>
    /// Provides a single output, 8-input Objectinterface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude1">Input argument #2</param>
    /// <param name="longitude1">Input argument #3</param>
    /// <param name="latitude2">Input argument #4</param>
    /// <param name="longitude2">Input argument #5</param>
    /// <param name="batasRadius">Input argument #6</param>
    /// <param name="seleksi">Input argument #7</param>
    /// <param name="interpolasi">Input argument #8</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object visualisasiDuaInputan(Object nama, Object latitude1, Object longitude1, 
                                  Object latitude2, Object longitude2, Object 
                                  batasRadius, Object seleksi, Object interpolasi)
    {
      return mcr.EvaluateFunction("visualisasiDuaInputan", nama, latitude1, longitude1, latitude2, longitude2, batasRadius, seleksi, interpolasi);
    }


    /// <summary>
    /// Provides a single output, 9-input Objectinterface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude1">Input argument #2</param>
    /// <param name="longitude1">Input argument #3</param>
    /// <param name="latitude2">Input argument #4</param>
    /// <param name="longitude2">Input argument #5</param>
    /// <param name="batasRadius">Input argument #6</param>
    /// <param name="seleksi">Input argument #7</param>
    /// <param name="interpolasi">Input argument #8</param>
    /// <param name="pohon">Input argument #9</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object visualisasiDuaInputan(Object nama, Object latitude1, Object longitude1, 
                                  Object latitude2, Object longitude2, Object 
                                  batasRadius, Object seleksi, Object interpolasi, Object 
                                  pohon)
    {
      return mcr.EvaluateFunction("visualisasiDuaInputan", nama, latitude1, longitude1, latitude2, longitude2, batasRadius, seleksi, interpolasi, pohon);
    }


    /// <summary>
    /// Provides a single output, 10-input Objectinterface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude1">Input argument #2</param>
    /// <param name="longitude1">Input argument #3</param>
    /// <param name="latitude2">Input argument #4</param>
    /// <param name="longitude2">Input argument #5</param>
    /// <param name="batasRadius">Input argument #6</param>
    /// <param name="seleksi">Input argument #7</param>
    /// <param name="interpolasi">Input argument #8</param>
    /// <param name="pohon">Input argument #9</param>
    /// <param name="deteksiAir">Input argument #10</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object visualisasiDuaInputan(Object nama, Object latitude1, Object longitude1, 
                                  Object latitude2, Object longitude2, Object 
                                  batasRadius, Object seleksi, Object interpolasi, Object 
                                  pohon, Object deteksiAir)
    {
      return mcr.EvaluateFunction("visualisasiDuaInputan", nama, latitude1, longitude1, latitude2, longitude2, batasRadius, seleksi, interpolasi, pohon, deteksiAir);
    }


    /// <summary>
    /// Provides the standard 0-input Object interface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] visualisasiDuaInputan(int numArgsOut)
    {
      return mcr.EvaluateFunction(numArgsOut, "visualisasiDuaInputan", new Object[]{});
    }


    /// <summary>
    /// Provides the standard 1-input Object interface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="nama">Input argument #1</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] visualisasiDuaInputan(int numArgsOut, Object nama)
    {
      return mcr.EvaluateFunction(numArgsOut, "visualisasiDuaInputan", nama);
    }


    /// <summary>
    /// Provides the standard 2-input Object interface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude1">Input argument #2</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] visualisasiDuaInputan(int numArgsOut, Object nama, Object latitude1)
    {
      return mcr.EvaluateFunction(numArgsOut, "visualisasiDuaInputan", nama, latitude1);
    }


    /// <summary>
    /// Provides the standard 3-input Object interface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude1">Input argument #2</param>
    /// <param name="longitude1">Input argument #3</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] visualisasiDuaInputan(int numArgsOut, Object nama, Object latitude1, 
                                    Object longitude1)
    {
      return mcr.EvaluateFunction(numArgsOut, "visualisasiDuaInputan", nama, latitude1, longitude1);
    }


    /// <summary>
    /// Provides the standard 4-input Object interface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude1">Input argument #2</param>
    /// <param name="longitude1">Input argument #3</param>
    /// <param name="latitude2">Input argument #4</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] visualisasiDuaInputan(int numArgsOut, Object nama, Object latitude1, 
                                    Object longitude1, Object latitude2)
    {
      return mcr.EvaluateFunction(numArgsOut, "visualisasiDuaInputan", nama, latitude1, longitude1, latitude2);
    }


    /// <summary>
    /// Provides the standard 5-input Object interface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude1">Input argument #2</param>
    /// <param name="longitude1">Input argument #3</param>
    /// <param name="latitude2">Input argument #4</param>
    /// <param name="longitude2">Input argument #5</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] visualisasiDuaInputan(int numArgsOut, Object nama, Object latitude1, 
                                    Object longitude1, Object latitude2, Object 
                                    longitude2)
    {
      return mcr.EvaluateFunction(numArgsOut, "visualisasiDuaInputan", nama, latitude1, longitude1, latitude2, longitude2);
    }


    /// <summary>
    /// Provides the standard 6-input Object interface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude1">Input argument #2</param>
    /// <param name="longitude1">Input argument #3</param>
    /// <param name="latitude2">Input argument #4</param>
    /// <param name="longitude2">Input argument #5</param>
    /// <param name="batasRadius">Input argument #6</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] visualisasiDuaInputan(int numArgsOut, Object nama, Object latitude1, 
                                    Object longitude1, Object latitude2, Object 
                                    longitude2, Object batasRadius)
    {
      return mcr.EvaluateFunction(numArgsOut, "visualisasiDuaInputan", nama, latitude1, longitude1, latitude2, longitude2, batasRadius);
    }


    /// <summary>
    /// Provides the standard 7-input Object interface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude1">Input argument #2</param>
    /// <param name="longitude1">Input argument #3</param>
    /// <param name="latitude2">Input argument #4</param>
    /// <param name="longitude2">Input argument #5</param>
    /// <param name="batasRadius">Input argument #6</param>
    /// <param name="seleksi">Input argument #7</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] visualisasiDuaInputan(int numArgsOut, Object nama, Object latitude1, 
                                    Object longitude1, Object latitude2, Object 
                                    longitude2, Object batasRadius, Object seleksi)
    {
      return mcr.EvaluateFunction(numArgsOut, "visualisasiDuaInputan", nama, latitude1, longitude1, latitude2, longitude2, batasRadius, seleksi);
    }


    /// <summary>
    /// Provides the standard 8-input Object interface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude1">Input argument #2</param>
    /// <param name="longitude1">Input argument #3</param>
    /// <param name="latitude2">Input argument #4</param>
    /// <param name="longitude2">Input argument #5</param>
    /// <param name="batasRadius">Input argument #6</param>
    /// <param name="seleksi">Input argument #7</param>
    /// <param name="interpolasi">Input argument #8</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] visualisasiDuaInputan(int numArgsOut, Object nama, Object latitude1, 
                                    Object longitude1, Object latitude2, Object 
                                    longitude2, Object batasRadius, Object seleksi, 
                                    Object interpolasi)
    {
      return mcr.EvaluateFunction(numArgsOut, "visualisasiDuaInputan", nama, latitude1, longitude1, latitude2, longitude2, batasRadius, seleksi, interpolasi);
    }


    /// <summary>
    /// Provides the standard 9-input Object interface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude1">Input argument #2</param>
    /// <param name="longitude1">Input argument #3</param>
    /// <param name="latitude2">Input argument #4</param>
    /// <param name="longitude2">Input argument #5</param>
    /// <param name="batasRadius">Input argument #6</param>
    /// <param name="seleksi">Input argument #7</param>
    /// <param name="interpolasi">Input argument #8</param>
    /// <param name="pohon">Input argument #9</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] visualisasiDuaInputan(int numArgsOut, Object nama, Object latitude1, 
                                    Object longitude1, Object latitude2, Object 
                                    longitude2, Object batasRadius, Object seleksi, 
                                    Object interpolasi, Object pohon)
    {
      return mcr.EvaluateFunction(numArgsOut, "visualisasiDuaInputan", nama, latitude1, longitude1, latitude2, longitude2, batasRadius, seleksi, interpolasi, pohon);
    }


    /// <summary>
    /// Provides the standard 10-input Object interface to the visualisasiDuaInputan
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude1">Input argument #2</param>
    /// <param name="longitude1">Input argument #3</param>
    /// <param name="latitude2">Input argument #4</param>
    /// <param name="longitude2">Input argument #5</param>
    /// <param name="batasRadius">Input argument #6</param>
    /// <param name="seleksi">Input argument #7</param>
    /// <param name="interpolasi">Input argument #8</param>
    /// <param name="pohon">Input argument #9</param>
    /// <param name="deteksiAir">Input argument #10</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] visualisasiDuaInputan(int numArgsOut, Object nama, Object latitude1, 
                                    Object longitude1, Object latitude2, Object 
                                    longitude2, Object batasRadius, Object seleksi, 
                                    Object interpolasi, Object pohon, Object deteksiAir)
    {
      return mcr.EvaluateFunction(numArgsOut, "visualisasiDuaInputan", nama, latitude1, longitude1, latitude2, longitude2, batasRadius, seleksi, interpolasi, pohon, deteksiAir);
    }


    /// <summary>
    /// Provides an interface for the visualisasiDuaInputan function in which the input
    /// and output
    /// arguments are specified as an array of Objects.
    /// </summary>
    /// <remarks>
    /// This method will allocate and return by reference the output argument
    /// array.<newpara></newpara>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return</param>
    /// <param name= "argsOut">Array of Object output arguments</param>
    /// <param name= "argsIn">Array of Object input arguments</param>
    /// <param name= "varArgsIn">Array of Object representing variable input
    /// arguments</param>
    ///
    [MATLABSignature("visualisasiDuaInputan", 10, 15, 0)]
    protected void visualisasiDuaInputan(int numArgsOut, ref Object[] argsOut, Object[] argsIn, params Object[] varArgsIn)
    {
        mcr.EvaluateFunctionForTypeSafeCall("visualisasiDuaInputan", numArgsOut, ref argsOut, argsIn, varArgsIn);
    }
    /// <summary>
    /// Provides a single output, 0-input Objectinterface to the visualisasiRadius
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object visualisasiRadius()
    {
      return mcr.EvaluateFunction("visualisasiRadius", new Object[]{});
    }


    /// <summary>
    /// Provides a single output, 1-input Objectinterface to the visualisasiRadius
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="nama">Input argument #1</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object visualisasiRadius(Object nama)
    {
      return mcr.EvaluateFunction("visualisasiRadius", nama);
    }


    /// <summary>
    /// Provides a single output, 2-input Objectinterface to the visualisasiRadius
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude">Input argument #2</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object visualisasiRadius(Object nama, Object latitude)
    {
      return mcr.EvaluateFunction("visualisasiRadius", nama, latitude);
    }


    /// <summary>
    /// Provides a single output, 3-input Objectinterface to the visualisasiRadius
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude">Input argument #2</param>
    /// <param name="longitude">Input argument #3</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object visualisasiRadius(Object nama, Object latitude, Object longitude)
    {
      return mcr.EvaluateFunction("visualisasiRadius", nama, latitude, longitude);
    }


    /// <summary>
    /// Provides a single output, 4-input Objectinterface to the visualisasiRadius
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude">Input argument #2</param>
    /// <param name="longitude">Input argument #3</param>
    /// <param name="radius">Input argument #4</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object visualisasiRadius(Object nama, Object latitude, Object longitude, 
                              Object radius)
    {
      return mcr.EvaluateFunction("visualisasiRadius", nama, latitude, longitude, radius);
    }


    /// <summary>
    /// Provides a single output, 5-input Objectinterface to the visualisasiRadius
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude">Input argument #2</param>
    /// <param name="longitude">Input argument #3</param>
    /// <param name="radius">Input argument #4</param>
    /// <param name="seleksi">Input argument #5</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object visualisasiRadius(Object nama, Object latitude, Object longitude, 
                              Object radius, Object seleksi)
    {
      return mcr.EvaluateFunction("visualisasiRadius", nama, latitude, longitude, radius, seleksi);
    }


    /// <summary>
    /// Provides a single output, 6-input Objectinterface to the visualisasiRadius
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude">Input argument #2</param>
    /// <param name="longitude">Input argument #3</param>
    /// <param name="radius">Input argument #4</param>
    /// <param name="seleksi">Input argument #5</param>
    /// <param name="interpolasi">Input argument #6</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object visualisasiRadius(Object nama, Object latitude, Object longitude, 
                              Object radius, Object seleksi, Object interpolasi)
    {
      return mcr.EvaluateFunction("visualisasiRadius", nama, latitude, longitude, radius, seleksi, interpolasi);
    }


    /// <summary>
    /// Provides a single output, 7-input Objectinterface to the visualisasiRadius
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude">Input argument #2</param>
    /// <param name="longitude">Input argument #3</param>
    /// <param name="radius">Input argument #4</param>
    /// <param name="seleksi">Input argument #5</param>
    /// <param name="interpolasi">Input argument #6</param>
    /// <param name="pohon">Input argument #7</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object visualisasiRadius(Object nama, Object latitude, Object longitude, 
                              Object radius, Object seleksi, Object interpolasi, Object 
                              pohon)
    {
      return mcr.EvaluateFunction("visualisasiRadius", nama, latitude, longitude, radius, seleksi, interpolasi, pohon);
    }


    /// <summary>
    /// Provides a single output, 8-input Objectinterface to the visualisasiRadius
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude">Input argument #2</param>
    /// <param name="longitude">Input argument #3</param>
    /// <param name="radius">Input argument #4</param>
    /// <param name="seleksi">Input argument #5</param>
    /// <param name="interpolasi">Input argument #6</param>
    /// <param name="pohon">Input argument #7</param>
    /// <param name="deteksiAir">Input argument #8</param>
    /// <returns>An Object containing the first output argument.</returns>
    ///
    public Object visualisasiRadius(Object nama, Object latitude, Object longitude, 
                              Object radius, Object seleksi, Object interpolasi, Object 
                              pohon, Object deteksiAir)
    {
      return mcr.EvaluateFunction("visualisasiRadius", nama, latitude, longitude, radius, seleksi, interpolasi, pohon, deteksiAir);
    }


    /// <summary>
    /// Provides the standard 0-input Object interface to the visualisasiRadius
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] visualisasiRadius(int numArgsOut)
    {
      return mcr.EvaluateFunction(numArgsOut, "visualisasiRadius", new Object[]{});
    }


    /// <summary>
    /// Provides the standard 1-input Object interface to the visualisasiRadius
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="nama">Input argument #1</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] visualisasiRadius(int numArgsOut, Object nama)
    {
      return mcr.EvaluateFunction(numArgsOut, "visualisasiRadius", nama);
    }


    /// <summary>
    /// Provides the standard 2-input Object interface to the visualisasiRadius
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude">Input argument #2</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] visualisasiRadius(int numArgsOut, Object nama, Object latitude)
    {
      return mcr.EvaluateFunction(numArgsOut, "visualisasiRadius", nama, latitude);
    }


    /// <summary>
    /// Provides the standard 3-input Object interface to the visualisasiRadius
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude">Input argument #2</param>
    /// <param name="longitude">Input argument #3</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] visualisasiRadius(int numArgsOut, Object nama, Object latitude, 
                                Object longitude)
    {
      return mcr.EvaluateFunction(numArgsOut, "visualisasiRadius", nama, latitude, longitude);
    }


    /// <summary>
    /// Provides the standard 4-input Object interface to the visualisasiRadius
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude">Input argument #2</param>
    /// <param name="longitude">Input argument #3</param>
    /// <param name="radius">Input argument #4</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] visualisasiRadius(int numArgsOut, Object nama, Object latitude, 
                                Object longitude, Object radius)
    {
      return mcr.EvaluateFunction(numArgsOut, "visualisasiRadius", nama, latitude, longitude, radius);
    }


    /// <summary>
    /// Provides the standard 5-input Object interface to the visualisasiRadius
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude">Input argument #2</param>
    /// <param name="longitude">Input argument #3</param>
    /// <param name="radius">Input argument #4</param>
    /// <param name="seleksi">Input argument #5</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] visualisasiRadius(int numArgsOut, Object nama, Object latitude, 
                                Object longitude, Object radius, Object seleksi)
    {
      return mcr.EvaluateFunction(numArgsOut, "visualisasiRadius", nama, latitude, longitude, radius, seleksi);
    }


    /// <summary>
    /// Provides the standard 6-input Object interface to the visualisasiRadius
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude">Input argument #2</param>
    /// <param name="longitude">Input argument #3</param>
    /// <param name="radius">Input argument #4</param>
    /// <param name="seleksi">Input argument #5</param>
    /// <param name="interpolasi">Input argument #6</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] visualisasiRadius(int numArgsOut, Object nama, Object latitude, 
                                Object longitude, Object radius, Object seleksi, Object 
                                interpolasi)
    {
      return mcr.EvaluateFunction(numArgsOut, "visualisasiRadius", nama, latitude, longitude, radius, seleksi, interpolasi);
    }


    /// <summary>
    /// Provides the standard 7-input Object interface to the visualisasiRadius
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude">Input argument #2</param>
    /// <param name="longitude">Input argument #3</param>
    /// <param name="radius">Input argument #4</param>
    /// <param name="seleksi">Input argument #5</param>
    /// <param name="interpolasi">Input argument #6</param>
    /// <param name="pohon">Input argument #7</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] visualisasiRadius(int numArgsOut, Object nama, Object latitude, 
                                Object longitude, Object radius, Object seleksi, Object 
                                interpolasi, Object pohon)
    {
      return mcr.EvaluateFunction(numArgsOut, "visualisasiRadius", nama, latitude, longitude, radius, seleksi, interpolasi, pohon);
    }


    /// <summary>
    /// Provides the standard 8-input Object interface to the visualisasiRadius
    /// M-function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="nama">Input argument #1</param>
    /// <param name="latitude">Input argument #2</param>
    /// <param name="longitude">Input argument #3</param>
    /// <param name="radius">Input argument #4</param>
    /// <param name="seleksi">Input argument #5</param>
    /// <param name="interpolasi">Input argument #6</param>
    /// <param name="pohon">Input argument #7</param>
    /// <param name="deteksiAir">Input argument #8</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public Object[] visualisasiRadius(int numArgsOut, Object nama, Object latitude, 
                                Object longitude, Object radius, Object seleksi, Object 
                                interpolasi, Object pohon, Object deteksiAir)
    {
      return mcr.EvaluateFunction(numArgsOut, "visualisasiRadius", nama, latitude, longitude, radius, seleksi, interpolasi, pohon, deteksiAir);
    }


    /// <summary>
    /// Provides an interface for the visualisasiRadius function in which the input and
    /// output
    /// arguments are specified as an array of Objects.
    /// </summary>
    /// <remarks>
    /// This method will allocate and return by reference the output argument
    /// array.<newpara></newpara>
    /// M-Documentation:
    /// if (zmin&lt;=0)
    /// cm(1,:)= [1 1 1];   laut
    /// end;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return</param>
    /// <param name= "argsOut">Array of Object output arguments</param>
    /// <param name= "argsIn">Array of Object input arguments</param>
    /// <param name= "varArgsIn">Array of Object representing variable input
    /// arguments</param>
    ///
    [MATLABSignature("visualisasiRadius", 8, 14, 0)]
    protected void visualisasiRadius(int numArgsOut, ref Object[] argsOut, Object[] argsIn, params Object[] varArgsIn)
    {
        mcr.EvaluateFunctionForTypeSafeCall("visualisasiRadius", numArgsOut, ref argsOut, argsIn, varArgsIn);
    }

    /// <summary>
    /// This method will cause a MATLAB figure window to behave as a modal dialog box.
    /// The method will not return until all the figure windows associated with this
    /// component have been closed.
    /// </summary>
    /// <remarks>
    /// An application should only call this method when required to keep the
    /// MATLAB figure window from disappearing.  Other techniques, such as calling
    /// Console.ReadLine() from the application should be considered where
    /// possible.</remarks>
    ///
    public void WaitForFiguresToDie()
    {
      mcr.WaitForFiguresToDie();
    }



    #endregion Methods

    #region Class Members

    private static MWMCR mcr= null;

    private bool disposed= false;

    #endregion Class Members
  }
}
