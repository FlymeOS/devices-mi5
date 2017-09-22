.class public Lcom/xiaomi/smack/d/g;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final bjL:[C

.field private static final bjM:[C

.field private static final bjN:[C

.field private static final bjO:[C

.field private static final bjP:[C

.field private static bjQ:Ljava/util/Random;

.field private static bjR:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "&quot;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/d/g;->bjL:[C

    .line 39
    const-string v0, "&apos;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/d/g;->bjM:[C

    .line 41
    const-string v0, "&amp;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/d/g;->bjN:[C

    .line 43
    const-string v0, "&lt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/d/g;->bjO:[C

    .line 45
    const-string v0, "&gt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/d/g;->bjP:[C

    .line 220
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/xiaomi/smack/d/g;->bjQ:Ljava/util/Random;

    .line 227
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 229
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/d/g;->bjR:[C

    .line 227
    return-void
.end method

.method public static encodeBase64([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/g/a;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeForXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x3e

    const/4 v0, 0x0

    .line 73
    if-nez p0, :cond_1

    .line 74
    const/4 p0, 0x0

    .line 132
    :cond_0
    :goto_0
    return-object p0

    .line 79
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 80
    array-length v3, v2

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    int-to-double v6, v3

    const-wide v8, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v6, v8

    double-to-int v1, v6

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v0

    .line 82
    :goto_1
    if-ge v1, v3, :cond_e

    .line 83
    aget-char v5, v2, v1

    .line 84
    if-le v5, v10, :cond_3

    .line 82
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 85
    :cond_3
    const/16 v6, 0x3c

    if-ne v5, v6, :cond_5

    .line 86
    if-le v1, v0, :cond_4

    .line 87
    sub-int v5, v1, v0

    invoke-virtual {v4, v2, v0, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 89
    :cond_4
    add-int/lit8 v0, v1, 0x1

    .line 90
    sget-object v5, Lcom/xiaomi/smack/d/g;->bjO:[C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 91
    :cond_5
    if-ne v5, v10, :cond_7

    .line 92
    if-le v1, v0, :cond_6

    .line 93
    sub-int v5, v1, v0

    invoke-virtual {v4, v2, v0, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 95
    :cond_6
    add-int/lit8 v0, v1, 0x1

    .line 96
    sget-object v5, Lcom/xiaomi/smack/d/g;->bjP:[C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 97
    :cond_7
    const/16 v6, 0x26

    if-ne v5, v6, :cond_a

    .line 98
    if-le v1, v0, :cond_8

    .line 99
    sub-int v5, v1, v0

    invoke-virtual {v4, v2, v0, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 103
    :cond_8
    add-int/lit8 v5, v1, 0x5

    if-le v3, v5, :cond_9

    add-int/lit8 v5, v1, 0x1

    aget-char v5, v2, v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_9

    add-int/lit8 v5, v1, 0x2

    aget-char v5, v2, v5

    .line 105
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_9

    add-int/lit8 v5, v1, 0x3

    aget-char v5, v2, v5

    .line 106
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_9

    add-int/lit8 v5, v1, 0x4

    aget-char v5, v2, v5

    .line 107
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_9

    add-int/lit8 v5, v1, 0x5

    aget-char v5, v2, v5

    const/16 v6, 0x3b

    if-eq v5, v6, :cond_2

    .line 109
    :cond_9
    add-int/lit8 v0, v1, 0x1

    .line 110
    sget-object v5, Lcom/xiaomi/smack/d/g;->bjN:[C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 112
    :cond_a
    const/16 v6, 0x22

    if-ne v5, v6, :cond_c

    .line 113
    if-le v1, v0, :cond_b

    .line 114
    sub-int v5, v1, v0

    invoke-virtual {v4, v2, v0, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 116
    :cond_b
    add-int/lit8 v0, v1, 0x1

    .line 117
    sget-object v5, Lcom/xiaomi/smack/d/g;->bjL:[C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 118
    :cond_c
    const/16 v6, 0x27

    if-ne v5, v6, :cond_2

    .line 119
    if-le v1, v0, :cond_d

    .line 120
    sub-int v5, v1, v0

    invoke-virtual {v4, v2, v0, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 122
    :cond_d
    add-int/lit8 v0, v1, 0x1

    .line 123
    sget-object v5, Lcom/xiaomi/smack/d/g;->bjM:[C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 126
    :cond_e
    if-eqz v0, :cond_0

    .line 129
    if-le v1, v0, :cond_f

    .line 130
    sub-int/2addr v1, v0

    invoke-virtual {v4, v2, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 132
    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static isValidXmlChar(C)Z
    .locals 1

    .prologue
    .line 269
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

    .prologue
    .line 242
    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 250
    :goto_0
    return-object v0

    .line 246
    :cond_0
    new-array v1, p0, [C

    .line 247
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 248
    sget-object v2, Lcom/xiaomi/smack/d/g;->bjR:[C

    sget-object v3, Lcom/xiaomi/smack/d/g;->bjQ:Ljava/util/Random;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static final replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 159
    if-nez p0, :cond_1

    .line 160
    const/4 p0, 0x0

    .line 183
    :cond_0
    :goto_0
    return-object p0

    .line 165
    :cond_1
    invoke-virtual {p0, p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 168
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    array-length v1, v2

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 171
    invoke-virtual {v5, v2, v6, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 172
    add-int/2addr v0, v4

    move v1, v0

    .line 175
    :goto_1
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    .line 176
    sub-int v6, v1, v0

    invoke-virtual {v5, v2, v0, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 177
    add-int v0, v1, v4

    move v1, v0

    .line 178
    goto :goto_1

    .line 180
    :cond_2
    array-length v1, v2

    sub-int/2addr v1, v0

    invoke-virtual {v5, v2, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripInvalidXMLChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 254
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    :goto_0
    return-object p0

    .line 258
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 259
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 260
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 261
    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->isValidXmlChar(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static final unescapeFromXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/smack/d/g;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/smack/d/g;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-static {v0, v1, v2}, Lcom/xiaomi/smack/d/g;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string v1, "&apos;"

    const-string v2, "\'"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/smack/d/g;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/smack/d/g;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
