/*
  This file was generated with genparser.pl from
  reply.kw.

  Instead of editing this file edit the keyword file and regenerate.
*/

#ifndef PARSE_KEYWORD_H
#define PARSE_KEYWORD_H 1


enum parse_keyword_e {
  NO_MATCH,
  MATCH_0,
  MATCH_1,
  MATCH_2,
  MATCH_3,
  MATCH_4,
  MATCH_5,
  MATCH_6,
  MATCH_7,
  MATCH_8,
  MATCH_9,
  MATCH_CLIENT_ERROR,
  MATCH_DELETED,
  MATCH_END,
  MATCH_ERROR,
  MATCH_EXISTS,
  MATCH_NOT_FOUND,
  MATCH_NOT_STORED,
  MATCH_OK,
  MATCH_SERVER_ERROR,
  MATCH_STAT,
  MATCH_STORED,
  MATCH_VALUE,
  MATCH_VERSION
};


extern
enum parse_keyword_e
parse_keyword(char **pos);


#endif /* ! PARSE_KEYWORD_H */
