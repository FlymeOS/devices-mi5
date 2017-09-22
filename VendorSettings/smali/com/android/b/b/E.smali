.class Lcom/android/b/b/E;
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
    .line 346
    iput-object p1, p0, Lcom/android/b/b/E;->aJu:Lcom/android/b/b/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/b/b/t;Lcom/android/b/b/u;)V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/android/b/b/E;-><init>(Lcom/android/b/b/t;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .prologue
    .line 348
    if-nez p3, :cond_1

    .line 349
    const-string v0, "BluetoothEventManager"

    const-string v1, "ACTION_PAIRING_CANCEL with no EXTRA_DEVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/android/b/b/E;->aJu:Lcom/android/b/b/t;

    invoke-static {v0}, Lcom/android/b/b/t;->d(Lcom/android/b/b/t;)Lcom/android/b/b/J;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 353
    if-nez v0, :cond_2

    .line 354
    const-string v0, "BluetoothEventManager"

    const-string v1, "ACTION_PAIRING_CANCEL with no cached device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    :cond_2
    sget v1, Lcom/android/b/e;->aHb:I

    .line 358
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Lcom/android/b/b/H;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/android/b/b/ai;->f(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
