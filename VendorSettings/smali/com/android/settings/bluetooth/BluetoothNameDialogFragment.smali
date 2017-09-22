.class public final Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;
.super Landroid/app/DialogFragment;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field QC:Landroid/widget/EditText;

.field private QD:Z

.field private QE:Z

.field final Qu:Lcom/android/b/b/Q;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private qb:Landroid/app/AlertDialog;

.field private uT:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 71
    new-instance v0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment$1;-><init>(Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;)V

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/bluetooth/Utils;->ax(Landroid/content/Context;)Lcom/android/b/b/R;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/android/b/b/R;->Af()Lcom/android/b/b/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->Qu:Lcom/android/b/b/Q;

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->qb:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method private aK(Ljava/lang/String;)Landroid/view/View;
    .locals 6

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 129
    const v1, 0x7f040069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 130
    const v0, 0x7f1300d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->QC:Landroid/widget/EditText;

    .line 131
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->QC:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/vendorsettings/bluetooth/Utf8ByteLengthFilter;

    const/16 v5, 0xf8

    invoke-direct {v4, v5}, Lcom/android/vendorsettings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 134
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->QC:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->QC:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->QC:Landroid/widget/EditText;

    new-instance v2, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment$3;-><init>(Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 148
    return-object v1
.end method

.method private setDeviceName(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 116
    const-string v0, "BluetoothNameDialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting device name to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0, p1}, Lcom/android/b/b/Q;->setName(Ljava/lang/String;)V

    .line 118
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 187
    iget-boolean v2, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->QD:Z

    if-eqz v2, :cond_1

    .line 189
    iput-boolean v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->QD:Z

    .line 190
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->uT:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iput-boolean v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->QE:Z

    .line 193
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->uT:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->uT:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method nu()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->Qu:Lcom/android/b/b/Q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->QD:Z

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->QE:Z

    .line 182
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->QC:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v1}, Lcom/android/b/b/Q;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->getName()Ljava/lang/String;

    move-result-object v0

    .line 93
    if-eqz p1, :cond_0

    .line 94
    const-string v1, "device_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, "device_name_edited"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->QE:Z

    .line 97
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0122

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->aK(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0123

    new-instance v2, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment$2;-><init>(Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->qb:Landroid/app/AlertDialog;

    .line 109
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->qb:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 112
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->qb:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 154
    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->qb:Landroid/app/AlertDialog;

    .line 155
    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->QC:Landroid/widget/EditText;

    .line 156
    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->uT:Landroid/widget/Button;

    .line 157
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 175
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 162
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->uT:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->qb:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->uT:Landroid/widget/Button;

    .line 164
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->uT:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->QE:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 166
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 122
    const-string v0, "device_name"

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->QC:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "device_name_edited"

    iget-boolean v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothNameDialogFragment;->QE:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 212
    return-void
.end method
