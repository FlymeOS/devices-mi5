.class public final Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/android/vendorsettings/widget/I;


# instance fields
.field private Cn:Z

.field private final Qu:Lcom/android/b/b/Q;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private me:Lcom/android/vendorsettings/widget/SwitchBar;

.field private sZ:Landroid/widget/Switch;


# direct methods
.method static synthetic a(Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private az(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 174
    iput v1, v0, Landroid/os/Message;->what:I

    .line 175
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_bluetooth_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    return-void
.end method

.method private setChecked(Z)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->sZ:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 160
    iget-boolean v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->Cn:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->me:Lcom/android/vendorsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/widget/SwitchBar;->b(Lcom/android/vendorsettings/widget/I;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->sZ:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 164
    iget-boolean v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->Cn:Z

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->me:Lcom/android/vendorsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/widget/SwitchBar;->a(Lcom/android/vendorsettings/widget/I;)V

    .line 168
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Switch;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/b/h;->E(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c02d9

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const/16 v1, 0x9f

    invoke-static {v0, v1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 191
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->Qu:Lcom/android/b/b/Q;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0, p2}, Lcom/android/b/b/Q;->bS(Z)V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->sZ:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 195
    return-void
.end method

.method bg(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    packed-switch p1, :pswitch_data_0

    .line 150
    invoke-direct {p0, v1}, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->sZ:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 152
    invoke-direct {p0, v1}, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->az(Z)V

    .line 154
    :goto_0
    return-void

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->sZ:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->sZ:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 138
    invoke-direct {p0, v2}, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->az(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->Qu:Lcom/android/b/b/Q;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/android/b/b/Q;->dZ(I)V

    goto :goto_0

    .line 142
    :pswitch_2
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->sZ:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 145
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->sZ:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 147
    invoke-direct {p0, v1}, Lcom/android/vendorsettings/bluetooth/BluetoothEnabler;->az(Z)V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
