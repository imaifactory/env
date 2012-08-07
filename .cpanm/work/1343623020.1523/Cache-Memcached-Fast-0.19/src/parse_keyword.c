/*
  This file was generated with genparser.pl from
  reply.kw.

  Instead of editing this file edit the keyword file and regenerate.
*/

#include "parse_keyword.h"


enum parse_keyword_e
parse_keyword(char **pos)
{
  char *match_pos;

  switch (*(*pos)++)
    {
    case '0':
      return MATCH_0;

    case '1':
      return MATCH_1;

    case '2':
      return MATCH_2;

    case '3':
      return MATCH_3;

    case '4':
      return MATCH_4;

    case '5':
      return MATCH_5;

    case '6':
      return MATCH_6;

    case '7':
      return MATCH_7;

    case '8':
      return MATCH_8;

    case '9':
      return MATCH_9;

    case 'C':
      match_pos = "LIENT_ERROR";

      do
        {
          if (**pos != *match_pos)
            return NO_MATCH;

          ++*pos;
          ++match_pos;
        }
      while (*match_pos != '\0');

      return MATCH_CLIENT_ERROR;

    case 'D':
      match_pos = "ELETED";

      do
        {
          if (**pos != *match_pos)
            return NO_MATCH;

          ++*pos;
          ++match_pos;
        }
      while (*match_pos != '\0');

      return MATCH_DELETED;

    case 'E':
      switch (*(*pos)++)
        {
        case 'N':
          match_pos = "D";

          do
            {
              if (**pos != *match_pos)
                return NO_MATCH;

              ++*pos;
              ++match_pos;
            }
          while (*match_pos != '\0');

          return MATCH_END;

        case 'R':
          match_pos = "ROR";

          do
            {
              if (**pos != *match_pos)
                return NO_MATCH;

              ++*pos;
              ++match_pos;
            }
          while (*match_pos != '\0');

          return MATCH_ERROR;

        case 'X':
          match_pos = "ISTS";

          do
            {
              if (**pos != *match_pos)
                return NO_MATCH;

              ++*pos;
              ++match_pos;
            }
          while (*match_pos != '\0');

          return MATCH_EXISTS;

        default:
          return NO_MATCH;
        }
    case 'N':
      match_pos = "OT_";

      do
        {
          if (**pos != *match_pos)
            return NO_MATCH;

          ++*pos;
          ++match_pos;
        }
      while (*match_pos != '\0');

      switch (*(*pos)++)
        {
        case 'F':
          match_pos = "OUND";

          do
            {
              if (**pos != *match_pos)
                return NO_MATCH;

              ++*pos;
              ++match_pos;
            }
          while (*match_pos != '\0');

          return MATCH_NOT_FOUND;

        case 'S':
          match_pos = "TORED";

          do
            {
              if (**pos != *match_pos)
                return NO_MATCH;

              ++*pos;
              ++match_pos;
            }
          while (*match_pos != '\0');

          return MATCH_NOT_STORED;

        default:
          return NO_MATCH;
        }
    case 'O':
      match_pos = "K";

      do
        {
          if (**pos != *match_pos)
            return NO_MATCH;

          ++*pos;
          ++match_pos;
        }
      while (*match_pos != '\0');

      return MATCH_OK;

    case 'S':
      switch (*(*pos)++)
        {
        case 'E':
          match_pos = "RVER_ERROR";

          do
            {
              if (**pos != *match_pos)
                return NO_MATCH;

              ++*pos;
              ++match_pos;
            }
          while (*match_pos != '\0');

          return MATCH_SERVER_ERROR;

        case 'T':
          switch (*(*pos)++)
            {
            case 'A':
              match_pos = "T";

              do
                {
                  if (**pos != *match_pos)
                    return NO_MATCH;

                  ++*pos;
                  ++match_pos;
                }
              while (*match_pos != '\0');

              return MATCH_STAT;

            case 'O':
              match_pos = "RED";

              do
                {
                  if (**pos != *match_pos)
                    return NO_MATCH;

                  ++*pos;
                  ++match_pos;
                }
              while (*match_pos != '\0');

              return MATCH_STORED;

            default:
              return NO_MATCH;
            }
        default:
          return NO_MATCH;
        }
    case 'V':
      switch (*(*pos)++)
        {
        case 'A':
          match_pos = "LUE";

          do
            {
              if (**pos != *match_pos)
                return NO_MATCH;

              ++*pos;
              ++match_pos;
            }
          while (*match_pos != '\0');

          return MATCH_VALUE;

        case 'E':
          match_pos = "RSION";

          do
            {
              if (**pos != *match_pos)
                return NO_MATCH;

              ++*pos;
              ++match_pos;
            }
          while (*match_pos != '\0');

          return MATCH_VERSION;

        default:
          return NO_MATCH;
        }
    default:
      return NO_MATCH;
    }

  /* Never reach here.  */
}
