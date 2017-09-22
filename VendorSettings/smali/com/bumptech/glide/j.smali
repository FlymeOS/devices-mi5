.class public Lcom/bumptech/glide/j;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/d/j;


# instance fields
.field private final aMS:Lcom/bumptech/glide/o;

.field private final aMU:Lcom/bumptech/glide/h;

.field private final aMW:Lcom/bumptech/glide/d/q;

.field private final aMX:Lcom/bumptech/glide/d/i;

.field private final aNV:Lcom/bumptech/glide/d/p;

.field private aNW:Lcom/bumptech/glide/l;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/d/i;Lcom/bumptech/glide/d/p;)V
    .locals 6

    .prologue
    .line 53
    new-instance v4, Lcom/bumptech/glide/d/q;

    invoke-direct {v4}, Lcom/bumptech/glide/d/q;-><init>()V

    new-instance v5, Lcom/bumptech/glide/d/e;

    invoke-direct {v5}, Lcom/bumptech/glide/d/e;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/j;-><init>(Landroid/content/Context;Lcom/bumptech/glide/d/i;Lcom/bumptech/glide/d/p;Lcom/bumptech/glide/d/q;Lcom/bumptech/glide/d/e;)V

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/d/i;Lcom/bumptech/glide/d/p;Lcom/bumptech/glide/d/q;Lcom/bumptech/glide/d/e;)V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/j;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/bumptech/glide/j;->aMX:Lcom/bumptech/glide/d/i;

    .line 60
    iput-object p3, p0, Lcom/bumptech/glide/j;->aNV:Lcom/bumptech/glide/d/p;

    .line 61
    iput-object p4, p0, Lcom/bumptech/glide/j;->aMW:Lcom/bumptech/glide/d/q;

    .line 62
    invoke-static {p1}, Lcom/bumptech/glide/h;->cV(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/j;->aMU:Lcom/bumptech/glide/h;

    .line 63
    new-instance v0, Lcom/bumptech/glide/o;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/o;-><init>(Lcom/bumptech/glide/j;)V

    iput-object v0, p0, Lcom/bumptech/glide/j;->aMS:Lcom/bumptech/glide/o;

    .line 65
    new-instance v0, Lcom/bumptech/glide/p;

    invoke-direct {v0, p4}, Lcom/bumptech/glide/p;-><init>(Lcom/bumptech/glide/d/q;)V

    invoke-virtual {p5, p1, v0}, Lcom/bumptech/glide/d/e;->a(Landroid/content/Context;Lcom/bumptech/glide/d/d;)Lcom/bumptech/glide/d/c;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/bumptech/glide/h/h;->EM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/bumptech/glide/k;

    invoke-direct {v2, p0, p2}, Lcom/bumptech/glide/k;-><init>(Lcom/bumptech/glide/j;Lcom/bumptech/glide/d/i;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    :goto_0
    invoke-interface {p2, v0}, Lcom/bumptech/glide/d/i;->a(Lcom/bumptech/glide/d/j;)V

    .line 82
    return-void

    .line 79
    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/d/i;->a(Lcom/bumptech/glide/d/j;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/bumptech/glide/j;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/j;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/h;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/j;->aMU:Lcom/bumptech/glide/h;

    return-object v0
.end method

.method private c(Ljava/lang/Class;)Lcom/bumptech/glide/b;
    .locals 10

    .prologue
    .line 625
    iget-object v0, p0, Lcom/bumptech/glide/j;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/s;

    move-result-object v2

    .line 626
    iget-object v0, p0, Lcom/bumptech/glide/j;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/s;

    move-result-object v3

    .line 628
    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 629
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". You must provide a Model of a type for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " which there is a registered ModelLoader, if you are using a custom model, you must first call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Glide#register with a ModelLoaderFactory for your custom model class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    iget-object v9, p0, Lcom/bumptech/glide/j;->aMS:Lcom/bumptech/glide/o;

    new-instance v0, Lcom/bumptech/glide/b;

    iget-object v4, p0, Lcom/bumptech/glide/j;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/bumptech/glide/j;->aMU:Lcom/bumptech/glide/h;

    iget-object v6, p0, Lcom/bumptech/glide/j;->aMW:Lcom/bumptech/glide/d/q;

    iget-object v7, p0, Lcom/bumptech/glide/j;->aMX:Lcom/bumptech/glide/d/i;

    iget-object v8, p0, Lcom/bumptech/glide/j;->aMS:Lcom/bumptech/glide/o;

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/b;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/b/s;Lcom/bumptech/glide/load/b/s;Landroid/content/Context;Lcom/bumptech/glide/h;Lcom/bumptech/glide/d/q;Lcom/bumptech/glide/d/i;Lcom/bumptech/glide/o;)V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/o;->b(Lcom/bumptech/glide/c;)Lcom/bumptech/glide/c;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b;

    return-object v0
.end method

.method static synthetic c(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/d/q;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/j;->aMW:Lcom/bumptech/glide/d/q;

    return-object v0
.end method

.method static synthetic d(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/d/i;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/j;->aMX:Lcom/bumptech/glide/d/i;

    return-object v0
.end method

.method static synthetic e(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/o;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/j;->aMS:Lcom/bumptech/glide/o;

    return-object v0
.end method

.method static synthetic f(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/l;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/j;->aNW:Lcom/bumptech/glide/l;

    return-object v0
.end method

.method private static v(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 641
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic w(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 43
    invoke-static {p0}, Lcom/bumptech/glide/j;->v(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public BL()V
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/bumptech/glide/h/h;->EK()V

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/j;->aMW:Lcom/bumptech/glide/d/q;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/q;->BL()V

    .line 149
    return-void
.end method

.method public BM()V
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/bumptech/glide/h/h;->EK()V

    .line 180
    iget-object v0, p0, Lcom/bumptech/glide/j;->aMW:Lcom/bumptech/glide/d/q;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/q;->BM()V

    .line 181
    return-void
.end method

.method public BN()Lcom/bumptech/glide/b;
    .locals 2

    .prologue
    .line 492
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;)Lcom/bumptech/glide/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/j;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/g/a;->cZ(Landroid/content/Context;)Lcom/bumptech/glide/load/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/b/s;Ljava/lang/Class;)Lcom/bumptech/glide/m;
    .locals 1

    .prologue
    .line 238
    new-instance v0, Lcom/bumptech/glide/m;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/m;-><init>(Lcom/bumptech/glide/j;Lcom/bumptech/glide/load/b/s;Ljava/lang/Class;)V

    return-object v0
.end method

.method public b(Ljava/lang/Integer;)Lcom/bumptech/glide/b;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->BN()Lcom/bumptech/glide/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/b;->s(Ljava/lang/Object;)Lcom/bumptech/glide/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/bumptech/glide/j;->aMW:Lcom/bumptech/glide/d/q;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/q;->Ec()V

    .line 222
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/bumptech/glide/j;->aMU:Lcom/bumptech/glide/h;

    invoke-virtual {v0}, Lcom/bumptech/glide/h;->BJ()V

    .line 96
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->BM()V

    .line 204
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->BL()V

    .line 213
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/j;->aMU:Lcom/bumptech/glide/h;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->trimMemory(I)V

    .line 89
    return-void
.end method
