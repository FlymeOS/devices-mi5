.class public Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;
.super Lmiui/app/AlertActivity;
.source "BluetoothPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private QM:Z

.field private QO:Landroid/widget/TextView;

.field private QP:Ljava/lang/String;

.field private QQ:Ljava/lang/String;

.field private QR:I

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Landroid/view/View;

.field private uT:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lmiui/app/AlertActivity;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QP:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QQ:Ljava/lang/String;

    .line 57
    iput v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QR:I

    .line 58
    new-instance v0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity$1;-><init>(Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;)V

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    iput-boolean v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QM:Z

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QR:I

    return v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->dismissDialog()V

    return-void
.end method

.method private d(ZZ)V
    .locals 4

    .prologue
    .line 227
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QP:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QQ:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QP:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QQ:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    :cond_0
    const-string v0, "BluetoothPermissionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendReplyIntentToReceiver() Request type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mReturnPackage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mReturnClass"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    const-string v0, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 240
    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v2, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QR:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v1, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 242
    return-void

    .line 235
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->dismiss()V

    .line 75
    return-void
.end method

.method private n(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 121
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 122
    const-string v1, "BluetoothPermissionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showDialog() Request type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " this: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    packed-switch p2, :pswitch_data_0

    .line 138
    :goto_0
    const v1, 0x7f0c00d2

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 139
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 140
    const v1, 0x7f0c00d3

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 141
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 142
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->uT:Landroid/widget/Button;

    .line 143
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->setupAlert()V

    .line 145
    return-void

    .line 126
    :pswitch_0
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->nC()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto :goto_0

    .line 129
    :pswitch_1
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->nD()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto :goto_0

    .line 132
    :pswitch_2
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->nE()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto :goto_0

    .line 135
    :pswitch_3
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->nF()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private nB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_0
    if-nez v0, :cond_0

    const v0, 0x7f0c0596

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_0
    return-object v0

    .line 154
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nC()Landroid/view/View;
    .locals 5

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->nB()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040024

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v2, 0x7f130051

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QO:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QO:Landroid/widget/TextView;

    const v2, 0x7f0c0143

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private nD()Landroid/view/View;
    .locals 5

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->nB()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040024

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v2, 0x7f130051

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QO:Landroid/widget/TextView;

    .line 177
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QO:Landroid/widget/TextView;

    const v2, 0x7f0c0145

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private nE()Landroid/view/View;
    .locals 5

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->nB()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040024

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v2, 0x7f130051

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QO:Landroid/widget/TextView;

    .line 186
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QO:Landroid/widget/TextView;

    const v2, 0x7f0c0149

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private nF()Landroid/view/View;
    .locals 5

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->nB()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040024

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 194
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v2, 0x7f130051

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QO:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QO:Landroid/widget/TextView;

    const v2, 0x7f0c014b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private nG()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 201
    const-string v0, "BluetoothPermissionActivity"

    const-string v1, "onPositive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0, v2, v2}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->d(ZZ)V

    .line 203
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->finish()V

    .line 204
    return-void
.end method

.method private nH()V
    .locals 4

    .prologue
    .line 207
    const-string v0, "BluetoothPermissionActivity"

    const-string v1, "onNegative"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v0, 0x1

    .line 210
    iget v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QR:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 211
    invoke-static {p0}, Lcom/android/vendorsettings/bluetooth/Utils;->ax(Landroid/content/Context;)Lcom/android/b/b/R;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Lcom/android/b/b/R;->Ai()Lcom/android/b/b/J;

    move-result-object v2

    .line 214
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 215
    if-nez v0, :cond_0

    .line 216
    invoke-virtual {v1}, Lcom/android/b/b/R;->Af()Lcom/android/b/b/Q;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/b/b/R;->Ak()Lcom/android/b/b/U;

    move-result-object v1

    iget-object v3, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/b/b/J;->a(Lcom/android/b/b/Q;Lcom/android/b/b/U;Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 220
    :cond_0
    invoke-virtual {v0}, Lcom/android/b/b/H;->zT()Z

    move-result v0

    .line 223
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->d(ZZ)V

    .line 224
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 149
    const-string v0, "BluetoothPermissionActivity"

    const-string v1, "Back button pressed! ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 245
    packed-switch p2, :pswitch_data_0

    .line 256
    :goto_0
    return-void

    .line 247
    :pswitch_0
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->nG()V

    goto :goto_0

    .line 251
    :pswitch_1
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->nH()V

    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 79
    invoke-super {p0, p1}, Lmiui/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const-string v0, "BluetoothPermissionActivity"

    const-string v1, "Error: this activity may be started only with intent ACTION_CONNECTION_ACCESS_REQUEST"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->finish()V

    .line 115
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 91
    const-string v0, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QP:Ljava/lang/String;

    .line 92
    const-string v0, "android.bluetooth.device.extra.CLASS_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QQ:Ljava/lang/String;

    .line 93
    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QR:I

    .line 96
    const-string v0, "BluetoothPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate() Request type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QR:I

    if-ne v0, v3, :cond_1

    .line 99
    const v0, 0x7f0c0141

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QR:I

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->n(Ljava/lang/String;I)V

    .line 112
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    iput-boolean v3, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QM:Z

    goto :goto_0

    .line 100
    :cond_1
    iget v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QR:I

    if-ne v0, v4, :cond_2

    .line 101
    const v0, 0x7f0c0144

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QR:I

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->n(Ljava/lang/String;I)V

    goto :goto_1

    .line 102
    :cond_2
    iget v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QR:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 103
    const v0, 0x7f0c0148

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QR:I

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->n(Ljava/lang/String;I)V

    goto :goto_1

    .line 104
    :cond_3
    iget v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QR:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 105
    const v0, 0x7f0c014a

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QR:I

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->n(Ljava/lang/String;I)V

    goto :goto_1

    .line 108
    :cond_4
    const-string v0, "BluetoothPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad request type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 260
    invoke-super {p0}, Lmiui/app/AlertActivity;->onDestroy()V

    .line 261
    iget-boolean v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QM:Z

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->QM:Z

    .line 265
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method
