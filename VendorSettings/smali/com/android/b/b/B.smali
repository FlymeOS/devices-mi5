.class Lcom/android/b/b/B;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/b/b/C;


# instance fields
.field final synthetic aJu:Lcom/android/b/b/t;


# direct methods
.method private constructor <init>(Lcom/android/b/b/t;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/b/b/B;->aJu:Lcom/android/b/b/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/b/b/t;Lcom/android/b/b/u;)V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/android/b/b/B;-><init>(Lcom/android/b/b/t;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .prologue
    .line 367
    const/4 v0, 0x1

    .line 368
    const-string v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 369
    if-nez v0, :cond_0

    .line 370
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/b/b/B;->aJu:Lcom/android/b/b/t;

    invoke-static {v0}, Lcom/android/b/b/t;->d(Lcom/android/b/b/t;)Lcom/android/b/b/J;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_0

    .line 373
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/b/b/H;->setVisible(Z)V

    .line 377
    :cond_0
    return-void
.end method
