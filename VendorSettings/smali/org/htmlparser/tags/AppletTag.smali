.class public Lorg/htmlparser/tags/AppletTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "AppletTag.java"


# static fields
.field private static final btF:[Ljava/lang/String;

.field private static final btG:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "APPLET"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/AppletTag;->btF:[Ljava/lang/String;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BODY"

    aput-object v1, v0, v2

    const-string v1, "HTML"

    aput-object v1, v0, v3

    sput-object v0, Lorg/htmlparser/tags/AppletTag;->btG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public NK()Ljava/util/Hashtable;
    .locals 6

    .prologue
    .line 102
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 103
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->Nf()Lorg/htmlparser/util/NodeList;

    move-result-object v3

    .line 104
    if-eqz v3, :cond_0

    .line 105
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 123
    :cond_0
    return-object v2

    .line 107
    :cond_1
    iget-object v0, p0, Lorg/htmlparser/tags/AppletTag;->children:Lorg/htmlparser/util/NodeList;

    invoke-virtual {v0, v1}, Lorg/htmlparser/util/NodeList;->fK(I)Lorg/htmlparser/a;

    move-result-object v0

    .line 108
    instance-of v4, v0, Lorg/htmlparser/d;

    if-eqz v4, :cond_2

    .line 110
    check-cast v0, Lorg/htmlparser/d;

    .line 111
    invoke-interface {v0}, Lorg/htmlparser/d;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PARAM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    const-string v4, "NAME"

    invoke-interface {v0, v4}, Lorg/htmlparser/d;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 116
    const-string v5, "VALUE"

    invoke-interface {v0, v5}, Lorg/htmlparser/d;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {v2, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public NL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, "CODE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/AppletTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public NM()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->NK()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public NN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string v0, "ARCHIVE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/AppletTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public NO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "CODEBASE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/AppletTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/htmlparser/tags/AppletTag;->btF:[Ljava/lang/String;

    return-object v0
.end method

.method public Nu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lorg/htmlparser/tags/AppletTag;->btG:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 286
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v0, 0x1f4

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 287
    const-string v0, "Applet Tag\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    const-string v0, "**********\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    const-string v0, "Class Name = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->NL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    const-string v0, "Archive = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->NN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    const-string v0, "Codebase = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->NO()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->NM()Ljava/util/Hashtable;

    move-result-object v5

    .line 299
    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v6

    .line 300
    if-nez v6, :cond_3

    .line 301
    const-string v0, "No Params found.\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->NP()Lorg/htmlparser/util/f;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Lorg/htmlparser/util/f;->Om()Z

    move-result v0

    if-nez v0, :cond_4

    .line 328
    if-eqz v3, :cond_2

    .line 329
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    :cond_2
    const-string v0, "End of Applet Tag\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    const-string v0, "*****************\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move v2, v3

    .line 303
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 307
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 308
    const-string v7, ": Parameter name = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    const-string v0, ", Parameter value = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 317
    :cond_4
    invoke-interface {v2}, Lorg/htmlparser/util/f;->NE()Lorg/htmlparser/a;

    move-result-object v1

    .line 318
    instance-of v0, v1, Lorg/htmlparser/d;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 319
    check-cast v0, Lorg/htmlparser/d;

    invoke-interface {v0}, Lorg/htmlparser/d;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "PARAM"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    :cond_5
    if-nez v3, :cond_6

    .line 322
    const-string v0, "Miscellaneous items :\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    :goto_2
    const/4 v3, 0x1

    .line 326
    invoke-interface {v1}, Lorg/htmlparser/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 324
    :cond_6
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
