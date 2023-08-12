#!/data/data/com.termux/files/usr/bin/bash
skip=50
set -e

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

case $TMPDIR in
  / | /*/) ;;
  /*) TMPDIR=$TMPDIR/;;
  *) TMPDIR=/data/data/com.termux/files/usr/tmp/;;
esac
if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -d "${TMPDIR}gztmpXXXXXXXXX"`
else
  gztmpdir=${TMPDIR}gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `printf 'X\n' | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  printf >&2 '%s\n' "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
��Rce �\{lG���?�g��M�fCR5-���/���ď���:.�h}�[�לoO{��i�hE��RI��M ��hA�5 BA���B)�j�(B�� ���������6�$��?�d�}����ǎg�`go����	�g����6�ﺍ&AX4��׃`&�g�����I� �Л��a�^����z����V'%9͟fYA�'�sЗ�ޓ~g>?�7����J8=��~u�݁q�NZ�鎷������ˀ��|w�|���Ř�c}��B(i���ޢ���e�l~���"��p��|Fײ�u9�W�D��D<�����5�w>z���蒦�	�n�*���'�ZI�9���]ZA�&|��V3������~�v��傃\v(������=���i��l��bJ6�5��5JO����N LQ3)#���bQ))݄�л�c3V�G�|��x`qk?N/������V��ܠ�q���p���8|��sxƟƸ����<��/M28�*/18�'�����{��C(zɩ��ŏ���S����kŽ��~a�Yῠ�&|�����Q�#L��(�a�� �>���{�h\y��~~|2���<J�E�~��ߟ����'}`��ʹ'��~"�������8�=��E`���`��u`��R�o�w��s�j�: ��H|�T��¾,}S��O�l�f<Q�ok��!� ��a�K�OE�$�'c�y�I��~��,�7�g����l�i  �}�?���8�'��1��'��F�-�6ï�m|��_����P�K�!*�2�-���������Q~%�,�u#�Gu	p���8�Wgʣ1��1��2�fʙf�0���ST�j��)�'�0�xc�>�������C'c���7���7R�7�$��-0ƴQ����P�2�0���V��n��o�k�[M�+�?\A��-Tf^C��Kiyp-�x-�F�H���Q]�`��O�I�?�>���z�_�·�!|[#|��B3|��`�'��w?��%����-*<C�_ߠ�[��T�r�G*%<E�� _��W��T�j�
���@� ���lc3�~>�x�ǅ`Z���PN-
ACȧ!�.�ؾs���[���`F�!1���Co�5��H���M����BB��
;��dh��6��UAN�D9��blCB���0R���z����H$<�z�h呣����U_9�T�$��sP�Y�9�C!�\
��h��/�k�UUW�1��~�{؏�j_Y�#�����f?^I��IT阘��9�k�7��I?�ƽ�G�_E⵱�,y��t�D��1��Z� �ey.��˙���U4��zÞ�TX��Y�x�W1�S�b�;�%�7Jz��d�*�z�c��Cr�s��ڈ�vf�*�ɺ]N�fޗcr��[��$ Q�y��D�6�9��/q�@�H������EjbgO�����;��ϵ�k�Y����2M��9�����	s9)y8Nb�II�Ǽ쿤�h:
%��o<���XM윌zog��r,\��5��Fz����s����q9$E͹�	��I�W���?��>!���h������ � K��d�J�~���	%Pf���r_-�CRܬp���";��M�R/�}��^����v�[�BS�9f��ί�a�t4�ݸ���Z��W��j:�(����U���&�*+��$�3Kt�����oG |+[��
�|�TZǜ��=��&n���j�uֱ���S���<TվP�F�7���çFO�;WR-�s�M\x^Ʌ�b* ����ܹ����
.~9p�s\�œ��g�_r�Z�+��5�ug=
�6c��f��Z�2[���g���|L�#��w���1m���p��W*i�]?����h�9����?��u�������|:9�J���7��͛7���E��IqM�rT�Caa]AWu5����-l2�!JU�C��9~'��ߝx���������:�y�}��|ڮN����o�~�ě�}gw��*�RS%|=����C�E����bڎN|	mg'��������j��m�������8g��n��o���g܇�p��~�?��[0���6��r�=?������f|�NXR�AwOƮ�L�/ǣkOE|f�.'� g���L;hٹ�iOa�$�����M�q�<Ƨ8|����rr�1~��G0~���8�8��7p��1��������q��o��:�Ƹ��#Op�#o��'0���/b|�;<�R�.G���5���ahs���%`���PI����[�Ǔ��~5s|[�ӟ�ƙq�z�����'e;����@�{,7*�W	���L����s�vL+��#�s-`����7P���}�'�r)�AKoy� ��"�8.�~�����)9?����%��W.��q�G�;�u�A��x6�ҌVc�КNF��w�X�y�P��}{L�fԼaC�=!�˧�T�3o
�3{��T����o�V��cC�Һ1��d�b�� �#e,��C+ T�ݷӈ)
�)���BVM��g�����ECO�\�p*���)Cӕ�>⌕Ê2��g��j���^YF�f(��x>S=ijl(;2����!��w{G{���)ro,;��t�OSȥ�ꨖ� [��J|�J|�J|�J|�J|�J|�J|�J|��aE����2갪+�q��Q���U�b���hG�]�#��9��垾�m[7EAi��G��o�֩�l��u�wu��P�;z;|���ͺ	g_��_�SFQ7ɡ"߯�
�튲��sk�������EqޫS2E�A�w�](C��(��ѫ �H���h˗�0���1#5����t�p���^ �٫E��E�󋣩�(3{�(�M�#�q�t{6��8��2b��CRPI�O]��"��ʰ��e4��C@D�=f%P��S{�b�y�Y��G�Sc�4R�!��@Lkccfq��Y��d��v?��_ ���L��?��>y���������k�·�= ?�O@h����`�y��~n߁�B��o���$?�.$�Z��~���{$L�	%�/�X7G8�e��}
B]�G�_�qܾ�L��+�`�W�(��'�3\~��!�h����!����?Z�L��� ������Ǹ�仚�������� �^��N|~Bh����{����`����w������-n;���w�����G侊����n���?�y�}C֋Re{��?c�3v�0�p��,����q��P�W�R��4�n�ݏ�;p��g�K��F��]e��?2��p�C  