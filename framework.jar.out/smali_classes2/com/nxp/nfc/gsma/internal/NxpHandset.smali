.class public Lcom/nxp/nfc/gsma/internal/NxpHandset;
.super Ljava/lang/Object;
.source "NxpHandset.java"


# static fields
.field private static final BATTERY_LOW_MODE:I = 0x90

.field private static final BATTERY_POWER_OFF_MODE:I = 0x91

.field private static final FELICA:I = 0x20

.field private static final HCI_SWP:I = 0x0

.field private static final MIFARE_CLASSIC:I = 0x21

.field private static final MIFARE_DESFIRE:I = 0x22

.field private static final MULTIPLE_ACTIVE_CEE:I = 0x1

.field private static final NFC_FORUM_TYPE3:I = 0x23


# instance fields
.field private final GSMA_NFCHST:I

.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "NxpHandset"

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->TAG:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 56
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 62
    const/16 v0, 0x1770

    iput v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->GSMA_NFCHST:I

    .line 65
    invoke-direct {p0}, Lcom/nxp/nfc/gsma/internal/NxpHandset;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mContext:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0}, Lcom/nxp/nfc/NxpNfcAdapter;->getNxpNfcAdapter(Landroid/nfc/NfcAdapter;)Lcom/nxp/nfc/NxpNfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 74
    :cond_1
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 6

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    const-string v3, "android.app.ActivityThread"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "currentApplication"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "context":Landroid/content/Context;
    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .restart local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 81
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e1":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "android.app.AppGlobals"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getInitialApplication"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 85
    .end local v0    # "context":Landroid/content/Context;
    :catch_1
    move-exception v2

    .line 86
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to get application instance"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public enableMultiEvt_transactionReception()V
    .locals 5

    .prologue
    .line 136
    iget-object v2, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "pkg":Ljava/lang/String;
    const/4 v0, 0x0

    .line 138
    .local v0, "isEnabled":Z
    iget-object v2, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-nez v0, :cond_0

    .line 146
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Application is not allowed to use this API"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_0
    return-void
.end method

.method public getNxpProperty(I)Z
    .locals 3
    .param p1, "feature"    # I

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "result":Z
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/16 v1, 0x20

    if-eq p1, v1, :cond_0

    const/16 v1, 0x21

    if-eq p1, v1, :cond_0

    const/16 v1, 0x22

    if-eq p1, v1, :cond_0

    const/16 v1, 0x23

    if-eq p1, v1, :cond_0

    const/16 v1, 0x90

    if-eq p1, v1, :cond_0

    const/16 v1, 0x91

    if-eq p1, v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Feature is inappropriate argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    .line 122
    :sswitch_0
    const/4 v0, 0x1

    .line 123
    goto :goto_0

    .line 113
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x20 -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x90 -> :sswitch_0
        0x91 -> :sswitch_0
    .end sparse-switch
.end method

.method public getNxpVersion()I
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0x1770

    return v0
.end method
