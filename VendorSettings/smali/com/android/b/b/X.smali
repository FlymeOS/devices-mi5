.class Lcom/android/b/b/X;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"

# interfaces
.implements Lcom/android/b/b/C;


# instance fields
.field final synthetic aKa:Lcom/android/b/b/U;

.field final aKb:Lcom/android/b/b/T;


# direct methods
.method constructor <init>(Lcom/android/b/b/U;Lcom/android/b/b/T;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/b/b/X;->aKa:Lcom/android/b/b/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p2, p0, Lcom/android/b/b/X;->aKb:Lcom/android/b/b/T;

    .line 243
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 246
    iget-object v0, p0, Lcom/android/b/b/X;->aKa:Lcom/android/b/b/U;

    invoke-static {v0}, Lcom/android/b/b/U;->b(Lcom/android/b/b/U;)Lcom/android/b/b/J;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 247
    if-nez v0, :cond_0

    .line 248
    const-string v0, "LocalBluetoothProfileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateChangedHandler found new device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/android/b/b/X;->aKa:Lcom/android/b/b/U;

    invoke-static {v0}, Lcom/android/b/b/U;->b(Lcom/android/b/b/U;)Lcom/android/b/b/J;

    move-result-object v0

    iget-object v1, p0, Lcom/android/b/b/X;->aKa:Lcom/android/b/b/U;

    invoke-static {v1}, Lcom/android/b/b/U;->c(Lcom/android/b/b/U;)Lcom/android/b/b/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/android/b/b/X;->aKa:Lcom/android/b/b/U;

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/b/b/J;->a(Lcom/android/b/b/Q;Lcom/android/b/b/U;Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 252
    :cond_0
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 253
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 254
    if-nez v1, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 256
    const-string v2, "LocalBluetoothProfileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to connect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/b/b/X;->aKb:Lcom/android/b/b/T;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_1
    iget-object v2, p0, Lcom/android/b/b/X;->aKb:Lcom/android/b/b/T;

    invoke-virtual {v0, v2, v1}, Lcom/android/b/b/H;->a(Lcom/android/b/b/T;I)V

    .line 260
    invoke-virtual {v0}, Lcom/android/b/b/H;->refresh()V

    .line 261
    return-void
.end method
