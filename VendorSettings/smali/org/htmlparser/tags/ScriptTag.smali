.class public Lorg/htmlparser/tags/ScriptTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "ScriptTag.java"


# static fields
.field private static final btF:[Ljava/lang/String;

.field private static final btG:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "SCRIPT"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/ScriptTag;->btF:[Ljava/lang/String;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BODY"

    aput-object v1, v0, v2

    const-string v1, "HTML"

    aput-object v1, v0, v3

    sput-object v0, Lorg/htmlparser/tags/ScriptTag;->btG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 62
    new-instance v0, Lorg/htmlparser/scanners/ScriptScanner;

    invoke-direct {v0}, Lorg/htmlparser/scanners/ScriptScanner;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ScriptTag;->a(Lorg/htmlparser/scanners/a;)V

    .line 63
    return-void
.end method


# virtual methods
.method public Ns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/htmlparser/tags/ScriptTag;->btF:[Ljava/lang/String;

    return-object v0
.end method

.method public Nu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lorg/htmlparser/tags/ScriptTag;->btG:[Ljava/lang/String;

    return-object v0
.end method

.method public Ol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/htmlparser/tags/ScriptTag;->mCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/htmlparser/tags/ScriptTag;->mCode:Ljava/lang/String;

    .line 107
    :goto_0
    return-object v0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->NQ()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/StringBuffer;Z)V
    .locals 4

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->Ol()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->Ol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    :cond_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->NP()Lorg/htmlparser/util/f;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/f;->Om()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-interface {v0}, Lorg/htmlparser/util/f;->NE()Lorg/htmlparser/a;

    move-result-object v1

    .line 163
    if-eqz p2, :cond_3

    invoke-interface {v1}, Lorg/htmlparser/a;->getStartPosition()I

    move-result v2

    invoke-interface {v1}, Lorg/htmlparser/a;->Ne()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 164
    :cond_3
    invoke-interface {v1, p2}, Lorg/htmlparser/a;->toHtml(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public fn(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lorg/htmlparser/tags/ScriptTag;->mCode:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "LANGUAGE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ScriptTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "TYPE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ScriptTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 175
    const-string v1, "Script Node : \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 178
    :cond_0
    const-string v1, "Properties -->\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Language : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    :cond_1
    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    :cond_2
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    const-string v1, "Code\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    const-string v1, "****\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->Ol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
