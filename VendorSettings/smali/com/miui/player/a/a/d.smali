.class public Lcom/miui/player/a/a/d;
.super Lcom/miui/player/a/a/b;
.source "PiscesDiracUtils.java"


# static fields
.field private static aWW:Ljava/util/List;


# instance fields
.field private aWX:Lcom/miui/player/a/a/a;

.field private mInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/miui/player/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public C(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 48
    const-string v0, "PiscesDiracUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set headset type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {p2}, Lcom/miui/player/a/a/d;->eE(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value, value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/miui/player/a/a/d;->aWX:Lcom/miui/player/a/a/a;

    invoke-virtual {v0, p2}, Lcom/miui/player/a/a/a;->setHeadsetType(I)V

    .line 54
    return-void
.end method

.method public Fa()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/miui/player/a/a/d;->mInitialized:Z

    return v0
.end method

.method public Fc()Ljava/util/List;
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v3, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 81
    sget-object v0, Lcom/miui/player/a/a/d;->aWW:Ljava/util/List;

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lcom/miui/player/a/a/d;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/player/a/a/d;->aWW:Ljava/util/List;

    .line 83
    sget-object v0, Lcom/miui/player/a/a/d;->aWW:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/miui/player/a/a/d;->aWW:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/miui/player/a/a/d;->aWW:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/miui/player/a/a/d;->aWW:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/miui/player/a/a/d;->aWW:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/miui/player/a/a/d;->aWW:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/miui/player/a/a/d;->aWW:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/miui/player/a/a/d;->aWW:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/miui/player/a/a/d;->aWW:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/miui/player/a/a/d;->aWW:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/miui/player/a/a/d;->aWW:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/miui/player/a/a/d;->aWW:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/miui/player/a/a/d;->aWX:Lcom/miui/player/a/a/a;

    iget-object v1, p0, Lcom/miui/player/a/a/d;->aWX:Lcom/miui/player/a/a/a;

    const-string v1, "DIRACSOUND_HEADSET_EM001"

    invoke-virtual {v0, v1}, Lcom/miui/player/a/a/a;->cF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/miui/player/a/a/d;->aWW:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    sget-object v0, Lcom/miui/player/a/a/d;->aWW:Ljava/util/List;

    return-object v0
.end method

.method public db(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/player/a/a/d;->aWX:Lcom/miui/player/a/a/a;

    invoke-virtual {v0}, Lcom/miui/player/a/a/a;->getHeadsetType()I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    iget-boolean v0, p0, Lcom/miui/player/a/a/d;->mInitialized:Z

    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/a/a/d;->mInitialized:Z

    .line 20
    new-instance v0, Lcom/miui/player/a/a/a;

    invoke-direct {v0, v1, v1}, Lcom/miui/player/a/a/a;-><init>(II)V

    iput-object v0, p0, Lcom/miui/player/a/a/d;->aWX:Lcom/miui/player/a/a/a;

    .line 22
    :cond_0
    return-void
.end method

.method public isEnabled(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 43
    iget-object v1, p0, Lcom/miui/player/a/a/d;->aWX:Lcom/miui/player/a/a/a;

    invoke-virtual {v1}, Lcom/miui/player/a/a/a;->getMusic()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/miui/player/a/a/d;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/miui/player/a/a/d;->aWX:Lcom/miui/player/a/a/a;

    invoke-virtual {v0}, Lcom/miui/player/a/a/a;->release()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/a/a/d;->aWX:Lcom/miui/player/a/a/a;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/a/a/d;->mInitialized:Z

    .line 31
    :cond_0
    return-void
.end method

.method public setHifiMode(I)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/player/a/a/d;->aWX:Lcom/miui/player/a/a/a;

    invoke-virtual {v0, p1}, Lcom/miui/player/a/a/a;->setHifiMode(I)V

    .line 75
    return-void
.end method

.method public t(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/player/a/a/d;->aWX:Lcom/miui/player/a/a/a;

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "PiscesDiracUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set dirac enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v1, p0, Lcom/miui/player/a/a/d;->aWX:Lcom/miui/player/a/a/a;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/player/a/a/a;->setMusic(I)V

    .line 39
    :cond_0
    return-void

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
