.class Lcom/android/b/d/c;
.super Landroid/os/Handler;
.source "StorageMeasurement.java"


# instance fields
.field final synthetic aKq:Lcom/android/b/d/a;


# direct methods
.method private constructor <init>(Lcom/android/b/d/a;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/b/d/c;->aKq:Lcom/android/b/d/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/b/d/a;Lcom/android/b/d/b;)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/android/b/d/c;-><init>(Lcom/android/b/d/a;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/b/d/d;

    .line 296
    iget-object v1, p0, Lcom/android/b/d/c;->aKq:Lcom/android/b/d/a;

    invoke-static {v1}, Lcom/android/b/d/a;->a(Lcom/android/b/d/a;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/b/d/c;->aKq:Lcom/android/b/d/a;

    invoke-static {v1}, Lcom/android/b/d/a;->a(Lcom/android/b/d/a;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/b/d/g;

    .line 297
    :goto_0
    if-eqz v1, :cond_0

    .line 298
    invoke-interface {v1, v0}, Lcom/android/b/d/g;->b(Lcom/android/b/d/d;)V

    .line 300
    :cond_0
    return-void

    .line 296
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
