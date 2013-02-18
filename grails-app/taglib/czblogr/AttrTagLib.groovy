package czblogr

class AttrTagLib {
    def attr = { attrs ->
        def v = attrs.value as String
        def mLength = attrs.maxLength as int
        out << (v.length() <= mLength ? v :org.apache.commons.lang.StringUtils.substring(v,0,mLength )+"...")
    }
}
