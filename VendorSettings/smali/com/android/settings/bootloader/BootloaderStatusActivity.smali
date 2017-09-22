.class public Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;
.super Lmiui/app/Activity;
.source "BootloaderStatusActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private St:Landroid/widget/Button;

.field private Su:Z

.field private Sv:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->Su:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->Sv:Landroid/widget/Toast;

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->oc()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->d(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->St:Landroid/widget/Button;

    return-object v0
.end method

.method private d(ILjava/lang/String;)V
    .locals 4

    .prologue
    const v0, 0x7f0c1175

    const/4 v3, 0x1

    .line 80
    iget-boolean v1, p0, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->Su:Z

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->Su:Z

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->Sv:Landroid/widget/Toast;

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->Sv:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 84
    :cond_1
    const v1, 0x7f0c1172

    .line 85
    if-ne p1, v3, :cond_3

    .line 86
    const v0, 0x7f0c1173

    .line 100
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->Sv:Landroid/widget/Toast;

    .line 101
    iget-object v0, p0, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->Sv:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    :goto_1
    return-void

    .line 87
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 88
    const v0, 0x7f0c1174

    goto :goto_0

    .line 89
    :cond_4
    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    .line 91
    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    .line 93
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 94
    const v0, 0x7f0c1176

    goto :goto_0

    .line 95
    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 96
    invoke-virtual {p0}, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->Sv:Landroid/widget/Toast;

    .line 97
    iget-object v0, p0, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->Sv:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method private oc()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-static {p0}, Lcom/android/vendorsettings/bootloader/Utils;->aB(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-boolean v0, p0, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->Su:Z

    if-eqz v0, :cond_0

    .line 62
    iput-boolean v2, p0, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->Su:Z

    .line 63
    invoke-static {p0, p0}, Lcom/android/vendorsettings/bootloader/Utils;->a(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    .line 77
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-direct {p0, v4, v3}, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->d(ILjava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {p0}, Lcom/android/vendorsettings/bootloader/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    const/4 v0, 0x2

    invoke-direct {p0, v0, v3}, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->d(ILjava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->St:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->St:Landroid/widget/Button;

    const v1, 0x33708090

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 75
    const/4 v0, 0x6

    invoke-direct {p0, v0, v3}, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->d(ILjava/lang/String;)V

    .line 76
    new-instance v0, Lcom/android/vendorsettings/bootloader/b;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bootloader/b;-><init>(Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;)V

    new-array v1, v4, [Landroid/content/Context;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/bootloader/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const-string v0, "ro.secureboot.lockstate"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v1, "unlocked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->setContentView(I)V

    .line 57
    :goto_0
    return-void

    .line 48
    :cond_1
    const v0, 0x7f04002d

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->setContentView(I)V

    .line 49
    const v0, 0x7f130066

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->St:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->St:Landroid/widget/Button;

    new-instance v1, Lcom/android/vendorsettings/bootloader/a;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/bootloader/a;-><init>(Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    .line 135
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 136
    if-eqz v0, :cond_0

    const-string v3, "booleanResult"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 140
    :goto_0
    if-nez v0, :cond_1

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->d(ILjava/lang/String;)V

    .line 145
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 136
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_0

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->oc()V

    goto :goto_1
.end method
