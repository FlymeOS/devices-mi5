.class public Lcom/miui/internal/component/module/CombinedRepository;
.super Lmiui/module/Repository;
.source "SourceFile"


# instance fields
.field private di:[Lmiui/module/Repository;


# direct methods
.method public varargs constructor <init>([Lmiui/module/Repository;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lmiui/module/Repository;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/miui/internal/component/module/CombinedRepository;->di:[Lmiui/module/Repository;

    .line 13
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 17
    iget-object v2, p0, Lcom/miui/internal/component/module/CombinedRepository;->di:[Lmiui/module/Repository;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 18
    invoke-virtual {v4, p1}, Lmiui/module/Repository;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 19
    const/4 v0, 0x1

    .line 22
    :cond_0
    return v0

    .line 17
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public fetch(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 27
    iget-object v1, p0, Lcom/miui/internal/component/module/CombinedRepository;->di:[Lmiui/module/Repository;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 28
    invoke-virtual {v3, p2}, Lmiui/module/Repository;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 29
    invoke-virtual {v3, p1, p2}, Lmiui/module/Repository;->fetch(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    :goto_1
    return-object v0

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
