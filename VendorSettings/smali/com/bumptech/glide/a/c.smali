.class public final Lcom/bumptech/glide/a/c;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final synthetic aOm:Lcom/bumptech/glide/a/a;

.field private final aOn:Lcom/bumptech/glide/a/d;

.field private final aOo:[Z

.field private aOp:Z


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/a/a;Lcom/bumptech/glide/a/d;)V
    .locals 1

    .prologue
    .line 710
    iput-object p1, p0, Lcom/bumptech/glide/a/c;->aOm:Lcom/bumptech/glide/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-object p2, p0, Lcom/bumptech/glide/a/c;->aOn:Lcom/bumptech/glide/a/d;

    .line 712
    invoke-static {p2}, Lcom/bumptech/glide/a/d;->d(Lcom/bumptech/glide/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/bumptech/glide/a/c;->aOo:[Z

    .line 713
    return-void

    .line 712
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/a/a;->e(Lcom/bumptech/glide/a/a;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/a/a;Lcom/bumptech/glide/a/d;Lcom/bumptech/glide/a/b;)V
    .locals 0

    .prologue
    .line 705
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/a/c;-><init>(Lcom/bumptech/glide/a/a;Lcom/bumptech/glide/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/a/c;)Lcom/bumptech/glide/a/d;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/bumptech/glide/a/c;->aOn:Lcom/bumptech/glide/a/d;

    return-object v0
.end method

.method static synthetic b(Lcom/bumptech/glide/a/c;)[Z
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/bumptech/glide/a/c;->aOo:[Z

    return-object v0
.end method


# virtual methods
.method public BU()V
    .locals 1

    .prologue
    .line 794
    iget-boolean v0, p0, Lcom/bumptech/glide/a/c;->aOp:Z

    if-nez v0, :cond_0

    .line 796
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/a/c;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 797
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abort()V
    .locals 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/bumptech/glide/a/c;->aOm:Lcom/bumptech/glide/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/a/a;->a(Lcom/bumptech/glide/a/a;Lcom/bumptech/glide/a/c;Z)V

    .line 791
    return-void
.end method

.method public commit()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 781
    iget-object v0, p0, Lcom/bumptech/glide/a/c;->aOm:Lcom/bumptech/glide/a/a;

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/a/a;->a(Lcom/bumptech/glide/a/a;Lcom/bumptech/glide/a/c;Z)V

    .line 782
    iput-boolean v1, p0, Lcom/bumptech/glide/a/c;->aOp:Z

    .line 783
    return-void
.end method

.method public ej(I)Ljava/io/File;
    .locals 3

    .prologue
    .line 745
    iget-object v1, p0, Lcom/bumptech/glide/a/c;->aOm:Lcom/bumptech/glide/a/a;

    monitor-enter v1

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/a/c;->aOn:Lcom/bumptech/glide/a/d;

    invoke-static {v0}, Lcom/bumptech/glide/a/d;->a(Lcom/bumptech/glide/a/d;)Lcom/bumptech/glide/a/c;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 747
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 749
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/a/c;->aOn:Lcom/bumptech/glide/a/d;

    invoke-static {v0}, Lcom/bumptech/glide/a/d;->d(Lcom/bumptech/glide/a/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/bumptech/glide/a/c;->aOo:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, p1

    .line 752
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/a/c;->aOn:Lcom/bumptech/glide/a/d;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/a/d;->el(I)Ljava/io/File;

    move-result-object v0

    .line 753
    iget-object v2, p0, Lcom/bumptech/glide/a/c;->aOm:Lcom/bumptech/glide/a/a;

    invoke-static {v2}, Lcom/bumptech/glide/a/a;->f(Lcom/bumptech/glide/a/a;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 754
    iget-object v2, p0, Lcom/bumptech/glide/a/c;->aOm:Lcom/bumptech/glide/a/a;

    invoke-static {v2}, Lcom/bumptech/glide/a/a;->f(Lcom/bumptech/glide/a/a;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 756
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method
