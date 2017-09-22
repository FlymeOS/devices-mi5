.class public Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;
.super Landroid/app/Activity;
.source "UsbModeChooserActivity.java"


# instance fields
.field private final VJ:Landroid/content/BroadcastReceiver;

.field private Vy:Landroid/hardware/usb/UsbManager;

.field private XM:[Ljava/lang/String;

.field private XN:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity$1;-><init>(Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->VJ:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->bB(I)V

    return-void
.end method

.method private bB(I)V
    .locals 2

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->Vy:Landroid/hardware/usb/UsbManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->Vy:Landroid/hardware/usb/UsbManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->Vy:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->XM:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->Vy:Landroid/hardware/usb/UsbManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    goto :goto_0
.end method

.method private pr()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-boolean v0, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->XN:Z

    if-nez v0, :cond_1

    move v0, v1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->XM:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->Vy:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->XM:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 143
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 61
    const-string v1, "unlocked"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->XN:Z

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->Vy:Landroid/hardware/usb/UsbManager;

    .line 65
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    new-array v0, v5, [Ljava/lang/CharSequence;

    const v1, 0x7f0c0b44

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f0c0b47

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v4

    .line 70
    new-array v1, v5, [Ljava/lang/String;

    aput-object v6, v1, v3

    const-string v2, "midi"

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->XM:[Ljava/lang/String;

    .line 87
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    const v2, 0x7f0c0b48

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->pr()I

    move-result v2

    new-instance v3, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity$2;

    invoke-direct {v3, p0}, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity$2;-><init>(Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    new-instance v0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity$3;-><init>(Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    const v0, 0x7f0c01a6

    new-instance v2, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity$4;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity$4;-><init>(Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 115
    return-void

    .line 78
    :cond_0
    new-array v0, v7, [Ljava/lang/CharSequence;

    const v1, 0x7f0c0b44

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f0c0b45

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f0c0b46

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v5

    .line 81
    new-array v1, v7, [Ljava/lang/String;

    aput-object v6, v1, v3

    const-string v2, "mtp"

    aput-object v2, v1, v4

    const-string v2, "ptp"

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->XM:[Ljava/lang/String;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 129
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->VJ:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 121
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->VJ:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    return-void
.end method
