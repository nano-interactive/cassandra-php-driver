/* This is a generated file, edit the .stub.php file instead.
 * Stub hash: 7a3f1244555d2643b981ca84d708a4e1cc196769 */




static const zend_function_entry class_Cassandra_Exceptions_ConfigurationException_methods[] = {
	ZEND_FE_END
};

static zend_class_entry *register_class_Cassandra_Exceptions_ConfigurationException(zend_class_entry *class_entry_Cassandra_Exceptions_ValidationException, zend_class_entry *class_entry_Cassandra_Exceptions_ExceptionInterface)
{
	zend_class_entry ce, *class_entry;

	INIT_NS_CLASS_ENTRY(ce, "Cassandra\\Exceptions", "ConfigurationException", class_Cassandra_Exceptions_ConfigurationException_methods);
	class_entry = zend_register_internal_class_ex(&ce, class_entry_Cassandra_Exceptions_ValidationException);
	zend_class_implements(class_entry, 1, class_entry_Cassandra_Exceptions_ExceptionInterface);

	return class_entry;
}
