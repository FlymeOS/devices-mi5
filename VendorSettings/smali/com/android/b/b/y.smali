.class Lcom/android/b/b/y;
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
    .line 207
    iput-object p1, p0, Lcom/android/b/b/y;->aJu:Lcom/android/b/b/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/b/b/t;Lcom/android/b/b/u;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/android/b/b/y;-><init>(Lcom/android/b/b/t;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/b/b/y;->aJu:Lcom/android/b/b/t;

    invoke-static {v0}, Lcom/android/b/b/t;->d(Lcom/android/b/b/t;)Lcom/android/b/b/J;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 211
    const-string v1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 213
    iget-object v2, p0, Lcom/android/b/b/y;->aJu:Lcom/android/b/b/t;

    invoke-static {v2, v0, v1}, Lcom/android/b/b/t;->a(Lcom/android/b/b/t;Lcom/android/b/b/H;I)V

    .line 214
    return-void
.end method
