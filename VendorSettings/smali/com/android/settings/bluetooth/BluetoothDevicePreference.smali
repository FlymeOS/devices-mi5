.class public Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/b/b/I;


# static fields
.field private static Qm:I


# instance fields
.field protected Qn:Lcom/android/b/b/H;

.field private Qo:Landroid/view/View$OnClickListener;

.field private Qp:Landroid/app/AlertDialog;

.field private final Qq:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/high16 v0, -0x80000000

    sput v0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qm:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/b/b/H;)V
    .locals 4

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 367
    new-instance v0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference$2;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference$2;-><init>(Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;)V

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qq:Landroid/content/BroadcastReceiver;

    .line 81
    sget v0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qm:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 82
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 84
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qm:I

    .line 87
    :cond_0
    iput-object p2, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    .line 99
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0, p0}, Lcom/android/b/b/H;->a(Lcom/android/b/b/I;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->nn()V

    .line 102
    return-void
.end method

.method private a(Lcom/android/b/b/H;)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 222
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v2}, Lcom/android/b/b/H;->zJ()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 223
    if-nez v2, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v0

    .line 224
    :cond_1
    invoke-virtual {p1}, Lcom/android/b/b/H;->zJ()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    .line 225
    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    .line 227
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v3

    .line 229
    if-eq v2, v3, :cond_3

    .line 231
    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 233
    :cond_3
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v2}, Lcom/android/b/b/H;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->aJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-virtual {p1}, Lcom/android/b/b/H;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->aJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    if-ne v2, v3, :cond_4

    .line 237
    const/4 v0, 0x0

    goto :goto_0

    .line 238
    :cond_4
    if-eqz v2, :cond_0

    .line 240
    if-nez v3, :cond_5

    move v0, v1

    .line 241
    goto :goto_0

    .line 244
    :cond_5
    invoke-static {v2, v3}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qq:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private aJ(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 261
    :goto_0
    return-object v0

    .line 254
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    invoke-static {}, Lmiui/text/ChinesePinyinConverter;->getInstance()Lmiui/text/ChinesePinyinConverter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/text/ChinesePinyinConverter;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 257
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/text/ChinesePinyinConverter$Token;

    .line 258
    iget-object v0, v0, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 261
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qp:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private np()V
    .locals 5

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    .line 280
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->getName()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v1, 0x7f0c012d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0125

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0124

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 287
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 288
    iget-object v3, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qq:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 290
    new-instance v2, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;)V

    .line 300
    iget-object v3, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qp:Landroid/app/AlertDialog;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v3, v4, v2, v1, v0}, Lcom/android/vendorsettings/bluetooth/Utils;->a(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qp:Landroid/app/AlertDialog;

    .line 302
    return-void
.end method

.method private nq()V
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->zx()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v1}, Lcom/android/b/b/H;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0047

    invoke-static {v0, v1, v2}, Lcom/android/vendorsettings/bluetooth/Utils;->f(Landroid/content/Context;Ljava/lang/String;I)V

    .line 320
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 311
    new-instance v1, Lcom/android/vendorsettings/search/n;

    invoke-direct {v1, v0}, Lcom/android/vendorsettings/search/n;-><init>(Landroid/content/Context;)V

    .line 312
    const-class v2, Lcom/android/vendorsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/vendorsettings/search/n;->className:Ljava/lang/String;

    .line 313
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v2}, Lcom/android/b/b/H;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/vendorsettings/search/n;->title:Ljava/lang/String;

    .line 314
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c026d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/vendorsettings/search/n;->apu:Ljava/lang/String;

    .line 315
    const v2, 0x7f020169

    iput v2, v1, Lcom/android/vendorsettings/search/n;->iconResId:I

    .line 316
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/vendorsettings/search/n;->enabled:Z

    .line 318
    invoke-static {v0}, Lcom/android/vendorsettings/search/e;->cf(Landroid/content/Context;)Lcom/android/vendorsettings/search/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/search/e;->c(Landroid/provider/SearchIndexableData;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qo:Landroid/view/View$OnClickListener;

    .line 110
    return-void
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 2

    .prologue
    .line 200
    instance-of v0, p1, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 202
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .line 216
    :goto_0
    return v0

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->getOrder()I

    move-result v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->getOrder()I

    move-result v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 215
    :cond_1
    check-cast p1, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;

    iget-object v0, p1, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    .line 216
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->a(Lcom/android/b/b/H;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 60
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 186
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_1

    .line 187
    :cond_0
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    check-cast p1, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;

    iget-object v1, p1, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0, v1}, Lcom/android/b/b/H;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->hashCode()I

    move-result v0

    return v0
.end method

.method nm()Lcom/android/b/b/H;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    return-object v0
.end method

.method public nn()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->zX()I

    move-result v0

    .line 131
    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->setSummary(I)V

    .line 137
    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->nr()I

    move-result v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->setIcon(I)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->zE()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    .line 147
    return-void

    .line 134
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method no()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->getBondState()I

    move-result v0

    .line 268
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v1}, Lcom/android/b/b/H;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->np()V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 271
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/b/b/H;->bP(Z)V

    goto :goto_0

    .line 272
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->nq()V

    goto :goto_0
.end method

.method protected nr()I
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->zJ()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 326
    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 347
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->zK()Ljava/util/List;

    move-result-object v0

    .line 348
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/T;

    .line 349
    invoke-interface {v0, v1}, Lcom/android/b/b/T;->a(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    .line 350
    if-eqz v0, :cond_0

    .line 364
    :goto_1
    return v0

    .line 329
    :sswitch_0
    const v0, 0x7f0200f8

    goto :goto_1

    .line 332
    :sswitch_1
    const v0, 0x7f0200f2

    goto :goto_1

    .line 335
    :sswitch_2
    invoke-static {v1}, Lcom/android/b/b/N;->c(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    goto :goto_1

    .line 338
    :sswitch_3
    const v0, 0x7f0200f6

    goto :goto_1

    .line 344
    :cond_1
    const-string v0, "BluetoothDevicePreference"

    const-string v2, "mBtClass is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    :cond_2
    if-eqz v1, :cond_4

    .line 355
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 356
    const v0, 0x7f0200f4

    goto :goto_1

    .line 359
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    const v0, 0x7f0200f5

    goto :goto_1

    .line 364
    :cond_4
    const v0, 0x7f0200f1

    goto :goto_1

    .line 327
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x500 -> :sswitch_2
        0x600 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v2, 0xc

    .line 152
    const-string v0, "bt_checkbox"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "bt_checkbox"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->getBondState()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 159
    sget v0, Lmiui/R$id;->arrow_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 160
    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 164
    sget v1, Lmiui/R$drawable;->btn_inline_detail_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 170
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->getBondState()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 171
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiui/R$dimen;->preference_custom_widget_margin_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 175
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qo:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qo:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 182
    :cond_0
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 115
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0, p0}, Lcom/android/b/b/H;->b(Lcom/android/b/b/I;)V

    .line 116
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qp:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qp:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDevicePreference;->Qp:Landroid/app/AlertDialog;

    .line 120
    :cond_0
    return-void
.end method
