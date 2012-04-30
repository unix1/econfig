

#Module econfig#
* [Description](#description)
* [Function Index](#index)
* [Function Details](#functions)


Public API of econfig.

<a name="index"></a>

##Function Index##


<table width="100%" border="1" cellspacing="0" cellpadding="2" summary="function index"><tr><td valign="top"><a href="#all-1">all/1</a></td><td>get all values of a configuration.</td></tr><tr><td valign="top"><a href="#delete_value-3">delete_value/3</a></td><td>delete a value.</td></tr><tr><td valign="top"><a href="#delete_value-4">delete_value/4</a></td><td>delete a value.</td></tr><tr><td valign="top"><a href="#get_value-2">get_value/2</a></td><td>get values of a section.</td></tr><tr><td valign="top"><a href="#get_value-3">get_value/3</a></td><td>get value for a key in a section.</td></tr><tr><td valign="top"><a href="#get_value-4">get_value/4</a></td><td></td></tr><tr><td valign="top"><a href="#register_config-2">register_config/2</a></td><td>register inifiles or config dirs.</td></tr><tr><td valign="top"><a href="#register_config-3">register_config/3</a></td><td>register inifiles of config dirs with options
For now the only option is  <code>autoreload</code> to auto reload the config on  
files or dirs changes.</td></tr><tr><td valign="top"><a href="#reload-1">reload/1</a></td><td>reload the configuration.</td></tr><tr><td valign="top"><a href="#reload-2">reload/2</a></td><td>reload the configuration.</td></tr><tr><td valign="top"><a href="#set_value-4">set_value/4</a></td><td>set a value.</td></tr><tr><td valign="top"><a href="#set_value-5">set_value/5</a></td><td></td></tr><tr><td valign="top"><a href="#start_autoreload-1">start_autoreload/1</a></td><td></td></tr><tr><td valign="top"><a href="#stop_autoreload-1">stop_autoreload/1</a></td><td></td></tr><tr><td valign="top"><a href="#subscribe-1">subscribe/1</a></td><td>Subscribe to config events for a config named <code>ConfigName</code></td></tr><tr><td valign="top"><a href="#unregister_config-1">unregister_config/1</a></td><td>unregister a conf.</td></tr><tr><td valign="top"><a href="#unsubscribe-1">unsubscribe/1</a></td><td>Remove subscribtion created using <code>subscribe(ConfigName)</code>.</td></tr></table>


<a name="functions"></a>

##Function Details##

<a name="all-1"></a>

###all/1##




`all(ConfigName) -> any()`



get all values of a configuration<a name="delete_value-3"></a>

###delete_value/3##




`delete_value(ConfigName, Section, Key) -> any()`



delete a value<a name="delete_value-4"></a>

###delete_value/4##




`delete_value(ConfigName, Section, Key, Persist) -> any()`



delete a value<a name="get_value-2"></a>

###get_value/2##




`get_value(ConfigName, Section) -> any()`



get values of a section<a name="get_value-3"></a>

###get_value/3##




`get_value(ConfigName, Section, Key) -> any()`



get value for a key in a section<a name="get_value-4"></a>

###get_value/4##




`get_value(ConfigName, Section, Key, Default) -> any()`

<a name="register_config-2"></a>

###register_config/2##




<pre>register_config(ConfigName::term(), IniFiles::<a href="econfig.md#type-inifiles">econfig:inifiles()</a>) -> ok | {error, any()}</pre>
<br></br>




register inifiles or config dirs<a name="register_config-3"></a>

###register_config/3##




<pre>register_config(ConfigName::term(), IniFiles::<a href="econfig.md#type-inifiles">econfig:inifiles()</a>, Options::<a href="econfig.md#type-options">econfig:options()</a>) -> ok | {error, any()}</pre>
<br></br>






register inifiles of config dirs with options
For now the only option is  `autoreload` to auto reload the config on  
files or dirs changes.  
Configs can also be registererd in the app configuration at startup:



[confs, [{ConfigName, IniFile},                
{ConfigName1, IniFiles1, Options}, ..]]

<a name="reload-1"></a>

###reload/1##




`reload(ConfigName) -> any()`



reload the configuration<a name="reload-2"></a>

###reload/2##




`reload(ConfigName, IniFiles) -> any()`



reload the configuration<a name="set_value-4"></a>

###set_value/4##




`set_value(ConfigName, Section, Key, Value) -> any()`



set a value<a name="set_value-5"></a>

###set_value/5##




`set_value(ConfigName, Section, Key, Value, Persist) -> any()`

<a name="start_autoreload-1"></a>

###start_autoreload/1##




`start_autoreload(ConfigName) -> any()`

<a name="stop_autoreload-1"></a>

###stop_autoreload/1##




`stop_autoreload(ConfigName) -> any()`

<a name="subscribe-1"></a>

###subscribe/1##




`subscribe(ConfigName) -> any()`





Subscribe to config events for a config named `ConfigName`



The message received to each subscriber will be of the form:

`{config_updated, ConfigName, {Section, Key}}`
<a name="unregister_config-1"></a>

###unregister_config/1##




<pre>unregister_config(ConfigName::term()) -&gt; ok</pre>
<br></br>




unregister a conf<a name="unsubscribe-1"></a>

###unsubscribe/1##




`unsubscribe(ConfigName) -> any()`



Remove subscribtion created using `subscribe(ConfigName)`