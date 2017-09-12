.class public Landroid/widget/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# static fields
.field public static final PHONE_NUMBERS:I = 0x4

.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x5

.field private static final WEB_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field public static final WEB_URLS:I = 0x1

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sput-object v0, Landroid/widget/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 43
    const-string v0, "[a-zA-Z0-9\\.]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/widget/Linkify;->WEB_CHAR_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Ljava/lang/CharSequence;IILjava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "pattern"    # Ljava/util/regex/Pattern;
    .param p5, "schemes"    # [Ljava/lang/String;
    .param p6, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p7, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinkSpec;",
            ">;",
            "Ljava/lang/CharSequence;",
            "II",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinkSpec;>;"
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 70
    .local v1, "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 71
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 72
    .local v2, "s":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 74
    .local v0, "e":I
    if-eqz p6, :cond_1

    invoke-interface {p6, p1, v2, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 75
    :cond_1
    new-instance v3, Landroid/widget/LinkSpec;

    invoke-direct {v3}, Landroid/widget/LinkSpec;-><init>()V

    .line 76
    .local v3, "spec":Landroid/widget/LinkSpec;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p5, v1, p7}, Landroid/widget/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "url":Ljava/lang/String;
    iput-object v4, v3, Landroid/widget/LinkSpec;->url:Ljava/lang/String;

    .line 79
    iput v2, v3, Landroid/widget/LinkSpec;->start:I

    .line 80
    iput v0, v3, Landroid/widget/LinkSpec;->end:I

    .line 82
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    .end local v0    # "e":I
    .end local v2    # "s":I
    .end local v3    # "spec":Landroid/widget/LinkSpec;
    .end local v4    # "url":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static final gatherTelLinks(Ljava/util/ArrayList;Ljava/lang/CharSequence;IIZ)V
    .locals 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "hasSelection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinkSpec;",
            ">;",
            "Ljava/lang/CharSequence;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinkSpec;>;"
    if-eqz p4, :cond_0

    move v6, p2

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 113
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    move p2, v6

    .line 112
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .end local v6    # "i":I
    :cond_0
    add-int/lit8 v6, p2, -0x1

    goto :goto_0

    .line 120
    .restart local v6    # "i":I
    :cond_1
    if-eqz p4, :cond_2

    add-int/lit8 v6, p3, -0x1

    :goto_1
    if-ltz v6, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v6, v1, :cond_3

    .line 121
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    add-int/lit8 p3, v6, 0x1

    .line 120
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move v6, p3

    goto :goto_1

    .line 128
    :cond_3
    sub-int v1, p3, p2

    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 144
    :cond_4
    return-void

    .line 132
    :cond_5
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 133
    .local v0, "phoneUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v9

    .line 136
    .local v9, "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 137
    .local v8, "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    new-instance v10, Landroid/widget/LinkSpec;

    invoke-direct {v10}, Landroid/widget/LinkSpec;-><init>()V

    .line 138
    .local v10, "spec":Landroid/widget/LinkSpec;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/widget/LinkSpec;->url:Ljava/lang/String;

    .line 139
    invoke-virtual {v8}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v1

    iput v1, v10, Landroid/widget/LinkSpec;->start:I

    .line 140
    invoke-virtual {v8}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v1

    iput v1, v10, Landroid/widget/LinkSpec;->end:I

    .line 142
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private static final gatherWebLinks(Ljava/util/ArrayList;Ljava/lang/CharSequence;IIZ)V
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "hasSelection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinkSpec;",
            ">;",
            "Ljava/lang/CharSequence;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinkSpec;>;"
    if-eqz p4, :cond_0

    move v8, p2

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 90
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    sget-object v1, Landroid/widget/Linkify;->WEB_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/widget/Linkify;->isValidChar(CLjava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    move p2, v8

    .line 89
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .end local v8    # "i":I
    :cond_0
    add-int/lit8 v8, p2, -0x1

    goto :goto_0

    .line 97
    .restart local v8    # "i":I
    :cond_1
    if-eqz p4, :cond_2

    add-int/lit8 v8, p3, -0x1

    :goto_1
    if-ltz v8, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 98
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    sget-object v1, Landroid/widget/Linkify;->WEB_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/widget/Linkify;->isValidChar(CLjava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    add-int/lit8 p3, v8, 0x1

    .line 97
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move v8, p3

    goto :goto_1

    .line 105
    :cond_3
    sget-object v4, Lmiui/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "http://"

    aput-object v1, v5, v0

    const/4 v0, 0x1

    const-string v1, "https://"

    aput-object v1, v5, v0

    const/4 v0, 0x2

    const-string v1, "rtsp://"

    aput-object v1, v5, v0

    sget-object v6, Landroid/widget/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Landroid/widget/Linkify;->gatherLinks(Ljava/util/ArrayList;Ljava/lang/CharSequence;IILjava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 108
    return-void
.end method

.method static final getLinks(Ljava/lang/CharSequence;III)Ljava/util/ArrayList;
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "III)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinkSpec;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 46
    if-eq p1, v2, :cond_0

    if-ne p2, v2, :cond_2

    .line 47
    :cond_0
    const/4 v1, 0x0

    .line 61
    :cond_1
    :goto_0
    return-object v1

    .line 50
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v1, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinkSpec;>;"
    if-eq p1, p2, :cond_4

    const/4 v0, 0x1

    .line 53
    .local v0, "hasSelection":Z
    :goto_1
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_3

    .line 54
    invoke-static {v1, p0, p1, p2, v0}, Landroid/widget/Linkify;->gatherWebLinks(Ljava/util/ArrayList;Ljava/lang/CharSequence;IIZ)V

    .line 57
    :cond_3
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_1

    .line 58
    invoke-static {v1, p0, p1, p2, v0}, Landroid/widget/Linkify;->gatherTelLinks(Ljava/util/ArrayList;Ljava/lang/CharSequence;IIZ)V

    goto :goto_0

    .line 51
    .end local v0    # "hasSelection":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static isValidChar(CLjava/util/regex/Pattern;)Z
    .locals 2
    .param p0, "c"    # C
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 177
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 178
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "prefixes"    # [Ljava/lang/String;
    .param p2, "m"    # Ljava/util/regex/Matcher;
    .param p3, "filter"    # Landroid/text/util/Linkify$TransformFilter;

    .prologue
    const/4 v2, 0x0

    .line 148
    if-eqz p3, :cond_0

    .line 149
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 152
    :cond_0
    const/4 v7, 0x0

    .line 154
    .local v7, "hasPrefix":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_1

    .line 155
    const/4 v1, 0x1

    aget-object v3, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    const/4 v7, 0x1

    .line 160
    aget-object v4, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 169
    :cond_1
    if-nez v7, :cond_2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 173
    :cond_2
    return-object p0

    .line 154
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method
