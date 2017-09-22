.class public Lmiui/hybrid/PageContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private yr:Ljava/lang/String;

.field private ys:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 62
    if-ne p0, p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 66
    goto :goto_0

    .line 68
    :cond_3
    check-cast p1, Lmiui/hybrid/PageContext;

    .line 69
    iget-object v2, p0, Lmiui/hybrid/PageContext;->yr:Ljava/lang/String;

    iget-object v3, p1, Lmiui/hybrid/PageContext;->yr:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    .line 72
    iget-object v2, p0, Lmiui/hybrid/PageContext;->yr:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lmiui/hybrid/PageContext;->yr:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmiui/hybrid/PageContext;->yr:Ljava/lang/String;

    iget-object v3, p1, Lmiui/hybrid/PageContext;->yr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 73
    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lmiui/hybrid/PageContext;->yr:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/hybrid/PageContext;->ys:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 54
    .line 56
    iget-object v0, p0, Lmiui/hybrid/PageContext;->yr:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 57
    return v0

    .line 56
    :cond_0
    iget-object v0, p0, Lmiui/hybrid/PageContext;->yr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lmiui/hybrid/PageContext;->yr:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lmiui/hybrid/PageContext;->ys:Ljava/lang/String;

    .line 50
    return-void
.end method
