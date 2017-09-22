.class Lcom/android/settings/wifi/bd;
.super Landroid/app/AlertDialog;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final aFi:[C


# instance fields
.field private aAG:I

.field private aCo:Landroid/widget/TextView;

.field private aFj:Landroid/widget/Button;

.field private aFk:Landroid/os/Handler;

.field private aFl:Landroid/widget/TextView;

.field private aFm:Landroid/widget/CheckBox;

.field private aFn:Ljava/lang/String;

.field private aFo:I

.field private dY:Landroid/widget/Button;

.field private je:Landroid/net/wifi/WifiManager;

.field private mContext:Landroid/content/Context;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mView:Landroid/view/View;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/android/settings/wifi/bd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/bd;->TAG:Ljava/lang/String;

    .line 58
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/bd;->aFi:[C

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IILandroid/net/wifi/WifiManager;)V
    .locals 3

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 82
    iput-object p1, p0, Lcom/android/settings/wifi/bd;->mContext:Landroid/content/Context;

    .line 83
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "WriteWifiConfigToNfcDialog:wakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/bd;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/bd;->aFk:Landroid/os/Handler;

    .line 86
    iput p2, p0, Lcom/android/settings/wifi/bd;->aAG:I

    .line 87
    iput p3, p0, Lcom/android/settings/wifi/bd;->aFo:I

    .line 88
    iput-object p4, p0, Lcom/android/settings/wifi/bd;->je:Landroid/net/wifi/WifiManager;

    .line 89
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/net/wifi/WifiManager;)V
    .locals 3

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 94
    iput-object p1, p0, Lcom/android/settings/wifi/bd;->mContext:Landroid/content/Context;

    .line 95
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "WriteWifiConfigToNfcDialog:wakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/bd;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/bd;->aFk:Landroid/os/Handler;

    .line 98
    const-string v0, "network_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/bd;->aAG:I

    .line 99
    const-string v0, "security"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/bd;->aFo:I

    .line 100
    iput-object p3, p0, Lcom/android/settings/wifi/bd;->je:Landroid/net/wifi/WifiManager;

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/bd;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private a(Landroid/nfc/Tag;)V
    .locals 5

    .prologue
    const v2, 0x7f0c0a44

    const v4, 0x7f0c0a43

    .line 188
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const-string v1, "application/vnd.wfa.wsc"

    iget-object v2, p0, Lcom/android/settings/wifi/bd;->aFn:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/bd;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Landroid/nfc/NdefRecord;->createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 196
    :try_start_0
    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->connect()V

    .line 197
    new-instance v2, Landroid/nfc/NdefMessage;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    invoke-direct {v2, v1, v3}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    invoke-virtual {v0, v2}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/wifi/bd;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/bf;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/bf;-><init>(Lcom/android/settings/wifi/bd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->aFl:Landroid/widget/TextView;

    const v1, 0x7f0c0a42

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/bd;->a(Landroid/widget/TextView;I)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->dY:Landroid/widget/Button;

    const v1, 0x104056c

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/bd;->a(Landroid/widget/TextView;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    iget-object v1, p0, Lcom/android/settings/wifi/bd;->aFl:Landroid/widget/TextView;

    invoke-direct {p0, v1, v4}, Lcom/android/settings/wifi/bd;->a(Landroid/widget/TextView;I)V

    .line 208
    sget-object v1, Lcom/android/settings/wifi/bd;->TAG:Ljava/lang/String;

    const-string v2, "Unable to write Wi-Fi config to NFC tag."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 210
    :catch_1
    move-exception v0

    .line 211
    iget-object v1, p0, Lcom/android/settings/wifi/bd;->aFl:Landroid/widget/TextView;

    invoke-direct {p0, v1, v4}, Lcom/android/settings/wifi/bd;->a(Landroid/widget/TextView;I)V

    .line 212
    sget-object v1, Lcom/android/settings/wifi/bd;->TAG:Ljava/lang/String;

    const-string v2, "Unable to write Wi-Fi config to NFC tag."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->aFl:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/bd;->a(Landroid/widget/TextView;I)V

    .line 217
    sget-object v0, Lcom/android/settings/wifi/bd;->TAG:Ljava/lang/String;

    const-string v1, "Tag is not writable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->aFl:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/bd;->a(Landroid/widget/TextView;I)V

    .line 221
    sget-object v0, Lcom/android/settings/wifi/bd;->TAG:Ljava/lang/String;

    const-string v1, "Tag does not support NDEF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/settings/wifi/bd;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/bh;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/wifi/bh;-><init>(Lcom/android/settings/wifi/bd;Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 265
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/bd;Landroid/nfc/Tag;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/bd;->a(Landroid/nfc/Tag;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/bd;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/wifi/bd;->xh()V

    return-void
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 289
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    .line 290
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 291
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 292
    mul-int/lit8 v3, v0, 0x2

    sget-object v4, Lcom/android/settings/wifi/bd;->aFi:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 293
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/android/settings/wifi/bd;->aFi:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 277
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 278
    div-int/lit8 v0, v1, 0x2

    new-array v2, v0, [B

    .line 280
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 281
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 280
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 285
    :cond_0
    return-object v2
.end method

.method private xh()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 246
    iget-object v2, p0, Lcom/android/settings/wifi/bd;->aCo:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 247
    iget v2, p0, Lcom/android/settings/wifi/bd;->aFo:I

    if-ne v2, v0, :cond_2

    .line 248
    iget-object v2, p0, Lcom/android/settings/wifi/bd;->aFj:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/wifi/bd;->aCo:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 256
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 248
    goto :goto_0

    .line 249
    :cond_2
    iget v2, p0, Lcom/android/settings/wifi/bd;->aFo:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 250
    iget-object v2, p0, Lcom/android/settings/wifi/bd;->aFj:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/wifi/bd;->aCo:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 253
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->aFj:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 231
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 232
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/settings/wifi/bd;->aCo:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 274
    return-void

    .line 269
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->aCo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/android/settings/wifi/bd;->je:Landroid/net/wifi/WifiManager;

    iget v2, p0, Lcom/android/settings/wifi/bd;->aAG:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->getWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/bd;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_0
    const-string v3, "102700%s%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iput-object v1, p0, Lcom/android/settings/wifi/bd;->aFn:Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/wifi/bd;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 154
    new-instance v2, Lcom/android/settings/wifi/be;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/be;-><init>(Lcom/android/settings/wifi/bd;)V

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->aCo:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->aFm:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->aFj:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/wifi/bd;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 171
    iget-object v1, p0, Lcom/android/settings/wifi/bd;->aCo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 173
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->aFl:Landroid/widget/TextView;

    const v1, 0x7f0c0a40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->mView:Landroid/view/View;

    const v1, 0x7f130218

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextAlignment(I)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 180
    :goto_1
    return-void

    .line 142
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->aFl:Landroid/widget/TextView;

    const v1, 0x7f0c0a41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    const/4 v3, -0x3

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/wifi/bd;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0401b3

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/bd;->mView:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/bd;->setView(Landroid/view/View;)V

    .line 108
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/bd;->setInverseBackgroundForced(Z)V

    .line 109
    const v0, 0x7f0c0a3e

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/bd;->setTitle(I)V

    .line 110
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/bd;->setCancelable(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0a3f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v2, v0}, Lcom/android/settings/wifi/bd;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/settings/wifi/bd;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->mView:Landroid/view/View;

    const v1, 0x7f13021a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/bd;->aCo:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->mView:Landroid/view/View;

    const v1, 0x7f13037c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/bd;->aFl:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->aCo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->mView:Landroid/view/View;

    const v1, 0x7f13021c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/bd;->aFm:Landroid/widget/CheckBox;

    .line 121
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->aFm:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->mView:Landroid/view/View;

    const v1, 0x7f130090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/wifi/bd;->mProgressBar:Landroid/widget/ProgressBar;

    .line 124
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/bd;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/bd;->aFj:Landroid/widget/Button;

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->aFj:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->aFj:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 130
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/bd;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/bd;->dY:Landroid/widget/Button;

    .line 131
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->aFk:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/bg;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/bg;-><init>(Lcom/android/settings/wifi/bd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 183
    const-string v0, "network_id"

    iget v1, p0, Lcom/android/settings/wifi/bd;->aAG:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    const-string v0, "security"

    iget v1, p0, Lcom/android/settings/wifi/bd;->aFo:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    return-void
.end method
