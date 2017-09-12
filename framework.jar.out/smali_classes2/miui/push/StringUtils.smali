.class public Lmiui/push/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final AMP_ENCODE:[C

.field private static final APOS_ENCODE:[C

.field private static final GT_ENCODE:[C

.field private static final LT_ENCODE:[C

.field private static final QUOTE_ENCODE:[C

.field private static numbersAndLetters:[C

.field private static randGen:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "&quot;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->QUOTE_ENCODE:[C

    .line 40
    const-string v0, "&apos;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->APOS_ENCODE:[C

    .line 42
    const-string v0, "&amp;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->AMP_ENCODE:[C

    .line 44
    const-string v0, "&lt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->LT_ENCODE:[C

    .line 46
    const-string v0, "&gt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->GT_ENCODE:[C

    .line 219
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lmiui/push/StringUtils;->randGen:Ljava/util/Random;

    .line 227
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->numbersAndLetters:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    return-void
.end method

.method public static encodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, "bytes":[B
    :try_start_0
    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 179
    :goto_0
    invoke-static {v0}, Lmiui/push/StringUtils;->encodeBase64([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static encodeBase64([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/push/StringUtils;->encodeBase64([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BIIZ)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "lineBreaks"    # Z

    .prologue
    .line 210
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, p2, v0}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static encodeBase64([BZ)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "lineBreaks"    # Z

    .prologue
    .line 200
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lmiui/push/StringUtils;->encodeBase64([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeForXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x3e

    .line 56
    if-nez p0, :cond_1

    .line 57
    const/4 p0, 0x0

    .line 113
    .end local p0    # "string":Ljava/lang/String;
    .local v1, "i":I
    .local v2, "input":[C
    .local v3, "last":I
    .local v4, "len":I
    .local v5, "out":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 60
    .end local v1    # "i":I
    .end local v2    # "input":[C
    .end local v3    # "last":I
    .end local v4    # "len":I
    .end local v5    # "out":Ljava/lang/StringBuilder;
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 61
    .restart local v1    # "i":I
    const/4 v3, 0x0

    .line 62
    .restart local v3    # "last":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 63
    .restart local v2    # "input":[C
    array-length v4, v2

    .line 64
    .restart local v4    # "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    int-to-double v6, v4

    const-wide v8, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 65
    .restart local v5    # "out":Ljava/lang/StringBuilder;
    :goto_1
    if-ge v1, v4, :cond_e

    .line 66
    aget-char v0, v2, v1

    .line 67
    .local v0, "ch":C
    if-le v0, v10, :cond_3

    .line 65
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68
    :cond_3
    const/16 v6, 0x3c

    if-ne v0, v6, :cond_5

    .line 69
    if-le v1, v3, :cond_4

    .line 70
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 72
    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 73
    sget-object v6, Lmiui/push/StringUtils;->LT_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 74
    :cond_5
    if-ne v0, v10, :cond_7

    .line 75
    if-le v1, v3, :cond_6

    .line 76
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 78
    :cond_6
    add-int/lit8 v3, v1, 0x1

    .line 79
    sget-object v6, Lmiui/push/StringUtils;->GT_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 82
    :cond_7
    const/16 v6, 0x26

    if-ne v0, v6, :cond_a

    .line 83
    if-le v1, v3, :cond_8

    .line 84
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 88
    :cond_8
    add-int/lit8 v6, v1, 0x5

    if-le v4, v6, :cond_9

    add-int/lit8 v6, v1, 0x1

    aget-char v6, v2, v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_9

    add-int/lit8 v6, v1, 0x2

    aget-char v6, v2, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_9

    add-int/lit8 v6, v1, 0x3

    aget-char v6, v2, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_9

    add-int/lit8 v6, v1, 0x4

    aget-char v6, v2, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_9

    add-int/lit8 v6, v1, 0x5

    aget-char v6, v2, v6

    const/16 v7, 0x3b

    if-eq v6, v7, :cond_2

    .line 90
    :cond_9
    add-int/lit8 v3, v1, 0x1

    .line 91
    sget-object v6, Lmiui/push/StringUtils;->AMP_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 93
    :cond_a
    const/16 v6, 0x22

    if-ne v0, v6, :cond_c

    .line 94
    if-le v1, v3, :cond_b

    .line 95
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 97
    :cond_b
    add-int/lit8 v3, v1, 0x1

    .line 98
    sget-object v6, Lmiui/push/StringUtils;->QUOTE_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 99
    :cond_c
    const/16 v6, 0x27

    if-ne v0, v6, :cond_2

    .line 100
    if-le v1, v3, :cond_d

    .line 101
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 103
    :cond_d
    add-int/lit8 v3, v1, 0x1

    .line 104
    sget-object v6, Lmiui/push/StringUtils;->APOS_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 107
    .end local v0    # "ch":C
    :cond_e
    if-eqz v3, :cond_0

    .line 110
    if-le v1, v3, :cond_f

    .line 111
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 113
    :cond_f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 301
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 303
    :goto_0
    return-object v1

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static getMd5Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 285
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 286
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-static {p0}, Lmiui/push/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 287
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 288
    .local v2, "hashInt":Ljava/math/BigInteger;
    const-string v3, "%1$032X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 289
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hashInt":Ljava/math/BigInteger;
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static isValidXmlChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 271
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const v0, 0xd7ff

    if-le p0, v0, :cond_3

    :cond_0
    const v0, 0xe000

    if-lt p0, v0, :cond_1

    const v0, 0xfffd

    if-le p0, v0, :cond_3

    :cond_1
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_2

    const v0, 0x10ffff

    if-le p0, v0, :cond_3

    :cond_2
    const/16 v0, 0x9

    if-eq p0, v0, :cond_3

    const/16 v0, 0xa

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd

    if-ne p0, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static randomString(I)Ljava/lang/String;
    .locals 5
    .param p0, "length"    # I

    .prologue
    .line 244
    const/4 v2, 0x1

    if-ge p0, v2, :cond_0

    .line 245
    const/4 v2, 0x0

    .line 252
    :goto_0
    return-object v2

    .line 248
    :cond_0
    new-array v1, p0, [C

    .line 249
    .local v1, "randBuffer":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 250
    sget-object v2, Lmiui/push/StringUtils;->numbersAndLetters:[C

    sget-object v3, Lmiui/push/StringUtils;->randGen:Ljava/util/Random;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static final replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "oldString"    # Ljava/lang/String;
    .param p2, "newString"    # Ljava/lang/String;

    .prologue
    .line 140
    if-nez p0, :cond_1

    .line 141
    const/4 p0, 0x0

    .line 163
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 143
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 145
    .local v1, "i":I
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 148
    .local v5, "string2":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 149
    .local v3, "newString2":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 150
    .local v4, "oLength":I
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v6, v5

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 151
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 152
    add-int/2addr v1, v4

    .line 153
    move v2, v1

    .line 155
    .local v2, "j":I
    :goto_1
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    .line 156
    sub-int v6, v1, v2

    invoke-virtual {v0, v5, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 157
    add-int/2addr v1, v4

    .line 158
    move v2, v1

    goto :goto_1

    .line 160
    :cond_2
    array-length v6, v5

    sub-int/2addr v6, v2

    invoke-virtual {v0, v5, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripInvalidXMLChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    .end local p0    # "in":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 260
    .restart local p0    # "in":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 261
    .local v2, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 262
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 263
    .local v0, "c":C
    invoke-static {v0}, Lmiui/push/StringUtils;->isValidXmlChar(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 267
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static final unescapeFromXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-static {p0, v0, v1}, Lmiui/push/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 125
    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-static {p0, v0, v1}, Lmiui/push/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 126
    const-string v0, "&quot;"

    const-string v1, "\""

    invoke-static {p0, v0, v1}, Lmiui/push/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 127
    const-string v0, "&apos;"

    const-string v1, "\'"

    invoke-static {p0, v0, v1}, Lmiui/push/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 128
    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-static {p0, v0, v1}, Lmiui/push/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
