.class public Lcom/android/vendorsettings/RadioInfo;
.super Lmiui/app/Activity;
.source "RadioInfo.java"


# instance fields
.field private L:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final TAG:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSlotId:I

.field private wK:Landroid/widget/TextView;

.field private wL:Landroid/widget/TextView;

.field private wM:Landroid/widget/TextView;

.field private wN:Landroid/widget/TextView;

.field private wO:Landroid/widget/TextView;

.field private wP:Landroid/widget/TextView;

.field private wQ:Landroid/widget/TextView;

.field private wR:Landroid/widget/TextView;

.field private wS:Landroid/widget/TextView;

.field private wT:Landroid/widget/TextView;

.field private wU:Landroid/widget/TextView;

.field private wV:Landroid/widget/TextView;

.field private wW:Landroid/widget/TextView;

.field private wX:Landroid/widget/TextView;

.field private wY:Landroid/widget/TextView;

.field private wZ:Landroid/widget/TextView;

.field private xA:Z

.field private xB:Ljava/util/List;

.field private xC:Landroid/telephony/PhoneStateListener;

.field private xD:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private xE:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private xF:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private xG:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private xH:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private xI:Landroid/view/MenuItem$OnMenuItemClickListener;

.field xJ:Landroid/view/View$OnClickListener;

.field xK:Lcom/android/vendorsettings/gU;

.field private xL:Landroid/widget/Button;

.field xM:Landroid/view/View$OnClickListener;

.field private xN:Landroid/widget/Button;

.field xO:Landroid/view/View$OnClickListener;

.field xP:Landroid/view/View$OnClickListener;

.field private xQ:Landroid/widget/Button;

.field xR:Landroid/view/View$OnClickListener;

.field xS:Landroid/view/View$OnClickListener;

.field xT:Landroid/view/View$OnClickListener;

.field xU:Landroid/view/View$OnClickListener;

.field xV:Landroid/view/View$OnClickListener;

.field xW:Landroid/view/View$OnClickListener;

.field xX:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private xY:[Ljava/lang/String;

.field private xa:Landroid/widget/TextView;

.field private xb:Landroid/widget/TextView;

.field private xc:Landroid/widget/TextView;

.field private xd:Landroid/widget/TextView;

.field private xe:Landroid/widget/TextView;

.field private xf:Landroid/widget/TextView;

.field private xg:Landroid/widget/TextView;

.field private xh:Landroid/widget/TextView;

.field private xi:Landroid/widget/TextView;

.field private xj:Landroid/widget/TextView;

.field private xk:Landroid/widget/TextView;

.field private xl:Landroid/widget/EditText;

.field private xm:Landroid/widget/Button;

.field private xn:Landroid/widget/Button;

.field private xo:Landroid/widget/Button;

.field private xp:Landroid/widget/Button;

.field private xq:Landroid/widget/Button;

.field private xr:Landroid/widget/Button;

.field private xs:Landroid/widget/Button;

.field private xt:Landroid/widget/Spinner;

.field private xu:Lcom/android/internal/telephony/Phone;

.field private xv:Lmiui/telephony/SubscriptionInfo;

.field private xw:Ljava/lang/String;

.field private xx:Ljava/lang/String;

.field private xy:Ljava/lang/String;

.field private xz:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 79
    const-string v0, "phone"

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->TAG:Ljava/lang/String;

    .line 145
    iput-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xu:Lcom/android/internal/telephony/Phone;

    .line 147
    iput-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xv:Lmiui/telephony/SubscriptionInfo;

    .line 153
    iput-boolean v2, p0, Lcom/android/vendorsettings/RadioInfo;->xz:Z

    .line 154
    iput-boolean v2, p0, Lcom/android/vendorsettings/RadioInfo;->xA:Z

    .line 158
    new-instance v0, Lcom/android/vendorsettings/gu;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gu;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xC:Landroid/telephony/PhoneStateListener;

    .line 208
    new-instance v0, Lcom/android/vendorsettings/gG;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gG;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->mHandler:Landroid/os/Handler;

    .line 966
    new-instance v0, Lcom/android/vendorsettings/gS;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gS;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xD:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 981
    new-instance v0, Lcom/android/vendorsettings/gT;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gT;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xE:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 996
    new-instance v0, Lcom/android/vendorsettings/gv;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gv;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xF:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1012
    new-instance v0, Lcom/android/vendorsettings/gw;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gw;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xG:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1019
    new-instance v0, Lcom/android/vendorsettings/gx;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gx;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xH:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1028
    new-instance v0, Lcom/android/vendorsettings/gy;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gy;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xI:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1046
    new-instance v0, Lcom/android/vendorsettings/gz;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gz;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xJ:Landroid/view/View$OnClickListener;

    .line 1071
    new-instance v0, Lcom/android/vendorsettings/gU;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gU;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xK:Lcom/android/vendorsettings/gU;

    .line 1075
    new-instance v0, Lcom/android/vendorsettings/gA;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gA;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xM:Landroid/view/View$OnClickListener;

    .line 1101
    new-instance v0, Lcom/android/vendorsettings/gB;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gB;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xO:Landroid/view/View$OnClickListener;

    .line 1118
    new-instance v0, Lcom/android/vendorsettings/gC;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gC;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xP:Landroid/view/View$OnClickListener;

    .line 1171
    new-instance v0, Lcom/android/vendorsettings/gE;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gE;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xR:Landroid/view/View$OnClickListener;

    .line 1194
    new-instance v0, Lcom/android/vendorsettings/gF;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gF;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xS:Landroid/view/View$OnClickListener;

    .line 1201
    new-instance v0, Lcom/android/vendorsettings/gH;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gH;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xT:Landroid/view/View$OnClickListener;

    .line 1214
    new-instance v0, Lcom/android/vendorsettings/gI;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gI;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xU:Landroid/view/View$OnClickListener;

    .line 1220
    new-instance v0, Lcom/android/vendorsettings/gJ;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gJ;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xV:Landroid/view/View$OnClickListener;

    .line 1228
    new-instance v0, Lcom/android/vendorsettings/gK;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gK;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xW:Landroid/view/View$OnClickListener;

    .line 1234
    new-instance v0, Lcom/android/vendorsettings/gL;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gL;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xX:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1247
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WCDMA preferred"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "GSM only"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "WCDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GSM auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EvDo only"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GSM/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LTE/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LTE/GSM auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "LTE/GSM/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LTE only"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "LTE/WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "TD-SCDMA only"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TD-SCDMA and WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "TD-SCDMA and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "TD-SCDMA and GSM"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TD-SCDMA, GSM and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "TD-SCDMA, GSM/WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "TD-SCDMA, WCDMA and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "TD-SCDMA, GSM/WCDMA and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TD-SCDMA, GSM/WCDMA, CDMA and EVDO"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TD-SCDMA, LTE,CDMA, EVDO, GSM/WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xY:[Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gQ()V

    return-void
.end method

.method static synthetic B(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gR()V

    return-void
.end method

.method static synthetic C(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gS()V

    return-void
.end method

.method static synthetic D(Lcom/android/vendorsettings/RadioInfo;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/vendorsettings/RadioInfo;->mSlotId:I

    return v0
.end method

.method static synthetic E(Lcom/android/vendorsettings/RadioInfo;)Z
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method static synthetic F(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gD()V

    return-void
.end method

.method static synthetic G(Lcom/android/vendorsettings/RadioInfo;)Z
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gW()Z

    move-result v0

    return v0
.end method

.method static synthetic H(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gX()V

    return-void
.end method

.method static synthetic I(Lcom/android/vendorsettings/RadioInfo;)Z
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gY()Z

    move-result v0

    return v0
.end method

.method static synthetic J(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->hb()V

    return-void
.end method

.method static synthetic K(Lcom/android/vendorsettings/RadioInfo;)Z
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gZ()Z

    move-result v0

    return v0
.end method

.method static synthetic L(Lcom/android/vendorsettings/RadioInfo;)Z
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->hc()Z

    move-result v0

    return v0
.end method

.method static synthetic M(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->hd()V

    return-void
.end method

.method static synthetic N(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gE()V

    return-void
.end method

.method static synthetic O(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gU()V

    return-void
.end method

.method static synthetic P(Lcom/android/vendorsettings/RadioInfo;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic Q(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gT()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/RadioInfo;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/vendorsettings/RadioInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method private final a(Landroid/telephony/CellLocation;)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 583
    invoke-virtual {p0}, Lcom/android/vendorsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 584
    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_2

    .line 585
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 586
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    .line 587
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    .line 588
    iget-object v3, p0, Lcom/android/vendorsettings/RadioInfo;->wW:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c0102

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v0, v8, :cond_0

    const-string v0, "unknown"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0c0103

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v2, v8, :cond_1

    const-string v0, "unknown"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :goto_2
    return-void

    .line 588
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 593
    :cond_2
    instance-of v0, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_8

    .line 594
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 595
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 596
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    .line 597
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    .line 598
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    .line 599
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v4

    .line 600
    iget-object v5, p0, Lcom/android/vendorsettings/RadioInfo;->wW:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v0, v8, :cond_3

    const-string v0, "unknown"

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "   "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "SID = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v1, v8, :cond_4

    const-string v0, "unknown"

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v2, v8, :cond_5

    const-string v0, "unknown"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LAT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v3, v8, :cond_6

    const-string v0, "unknown"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LONG = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v4, v8, :cond_7

    const-string v0, "unknown"

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 615
    :cond_8
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wW:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private final a(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wZ:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/telephony/DataConnectionRealTimeInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gF()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/RadioInfo;Landroid/telephony/CellLocation;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/RadioInfo;->a(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/RadioInfo;->a(Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/RadioInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/RadioInfo;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/RadioInfo;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/RadioInfo;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/RadioInfo;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/RadioInfo;->m(Ljava/util/List;)V

    return-void
.end method

.method private final a(Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    if-eqz p1, :cond_2

    .line 625
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    const-string v0, "no neighboring cells"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wX:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    return-void

    .line 628
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 629
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 633
    :cond_2
    const-string v0, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vendorsettings/RadioInfo;Z)Z
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/vendorsettings/RadioInfo;->xz:Z

    return p1
.end method

.method static synthetic b(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gL()V

    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/RadioInfo;Z)Z
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/vendorsettings/RadioInfo;->xA:Z

    return p1
.end method

.method static synthetic c(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gO()V

    return-void
.end method

.method static synthetic d(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gV()V

    return-void
.end method

.method static synthetic e(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gM()V

    return-void
.end method

.method static synthetic f(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gP()V

    return-void
.end method

.method static synthetic g(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gI()V

    return-void
.end method

.method private gC()V
    .locals 2

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->isRadioOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c00e3

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 512
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xm:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 513
    return-void

    .line 509
    :cond_0
    const v0, 0x7f0c00e2

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private gD()V
    .locals 3

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xn:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoListRate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->xK:Lcom/android/vendorsettings/gU;

    invoke-virtual {v2}, Lcom/android/vendorsettings/gU;->he()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 517
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManagerEx;->getAllCellInfoForSlot(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->m(Ljava/util/List;)V

    .line 518
    return-void
.end method

.method private gE()V
    .locals 2

    .prologue
    .line 521
    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xk:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xu:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0.0.0 allowed"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    return-void

    .line 521
    :cond_0
    const-string v0, "0.0.0.0 not allowed"

    goto :goto_0
.end method

.method private final gF()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 527
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_3

    .line 528
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->L:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 529
    invoke-virtual {p0}, Lcom/android/vendorsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 531
    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wS:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v0

    .line 538
    if-ne v4, v0, :cond_2

    move v0, v1

    .line 540
    :cond_2
    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v2

    .line 542
    if-ne v4, v2, :cond_4

    .line 544
    :goto_0
    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->wS:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0c0100

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0101

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    const-string v0, "A7-LTE-ALL"

    const-string v1, "persist.radio.modem"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 550
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gG()V

    .line 553
    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private final gG()V
    .locals 1

    .prologue
    .line 556
    new-instance v0, Lcom/android/vendorsettings/gN;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gN;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    .line 562
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 563
    return-void
.end method

.method private final gH()V
    .locals 4

    .prologue
    .line 566
    .line 568
    const-string v0, "QOEMHOOK"

    .line 569
    const-string v0, "QOEMHOOK"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    .line 570
    new-array v0, v0, [B

    .line 572
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 573
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 574
    const-string v2, "QOEMHOOK"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 575
    const v2, 0x80035

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 576
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 577
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryASDivStatus a seperate thread, req = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 579
    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xu:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ef

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 580
    return-void
.end method

.method private final gI()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wU:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/vendorsettings/RadioInfo;->xz:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    return-void
.end method

.method private final gJ()V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wV:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/vendorsettings/RadioInfo;->xA:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    return-void
.end method

.method private final gK()V
    .locals 5

    .prologue
    const v4, 0x7f0c0b85

    .line 673
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->L:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 674
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 675
    invoke-virtual {p0}, Lcom/android/vendorsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 676
    const v0, 0x7f0c00fd

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 678
    packed-switch v2, :pswitch_data_0

    .line 691
    :goto_0
    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->wP:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wO:Landroid/widget/TextView;

    const v2, 0x7f0c00f4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 699
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xv:Lmiui/telephony/SubscriptionInfo;

    if-eqz v0, :cond_3

    .line 700
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManagerEx;->isRadioOnForSlot(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xv:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 701
    :goto_2
    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->wN:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xv:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    :goto_4
    return-void

    .line 680
    :pswitch_0
    const v0, 0x7f0c00f0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 684
    :pswitch_1
    const v0, 0x7f0c00f2

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 687
    :pswitch_2
    const v0, 0x7f0c00f3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wO:Landroid/widget/TextView;

    const v2, 0x7f0c00f5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 700
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 701
    :cond_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 703
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v2, p0, Lcom/android/vendorsettings/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 704
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wN:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/vendorsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 706
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wN:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 678
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final gL()V
    .locals 3

    .prologue
    .line 733
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManagerEx;->getDataStateForSlot(I)I

    move-result v1

    .line 734
    invoke-virtual {p0}, Lcom/android/vendorsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 735
    const v0, 0x7f0c00fd

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 737
    packed-switch v1, :pswitch_data_0

    .line 752
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->wQ:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    return-void

    .line 739
    :pswitch_0
    const v0, 0x7f0c00fb

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 742
    :pswitch_1
    const v0, 0x7f0c00fa

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 745
    :pswitch_2
    const v0, 0x7f0c00f9

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 748
    :pswitch_3
    const v0, 0x7f0c00fc

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 737
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final gM()V
    .locals 4

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wR:Landroid/widget/TextView;

    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v1

    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v2

    iget v3, p0, Lcom/android/vendorsettings/RadioInfo;->mSlotId:I

    invoke-virtual {v2, v3}, Lmiui/telephony/TelephonyManagerEx;->getNetworkTypeForSlot(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/telephony/TelephonyManagerEx;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    return-void
.end method

.method private final gN()V
    .locals 4

    .prologue
    const v3, 0x7f0c00fd

    .line 762
    invoke-virtual {p0}, Lcom/android/vendorsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 764
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xu:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 765
    if-nez v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 766
    :cond_0
    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->wK:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xu:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 770
    if-nez v0, :cond_1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 771
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->wL:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    return-void
.end method

.method private final gO()V
    .locals 2

    .prologue
    .line 777
    const-string v0, "net.gsm.radio-reset"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 778
    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xa:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    const-string v0, "net.gsm.attempt-gprs"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 781
    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xb:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    const-string v0, "net.gsm.succeed-gprs"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 784
    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xc:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    const-string v0, "net.ppp.reset-by-timeout"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 790
    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xe:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    return-void
.end method

.method private final gP()V
    .locals 12

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/android/vendorsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 796
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v2

    .line 797
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v4

    .line 798
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v6

    .line 799
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v8

    .line 801
    const v1, 0x7f0c00fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 802
    const v10, 0x7f0c00ff

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 804
    iget-object v10, p0, Lcom/android/vendorsettings/RadioInfo;->xf:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->xg:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    return-void
.end method

.method private final gQ()V
    .locals 4

    .prologue
    .line 815
    :try_start_0
    const-string v0, "74.125.47.104"

    .line 816
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping -c 1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 817
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 818
    if-nez v0, :cond_0

    .line 819
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xw:Ljava/lang/String;

    .line 828
    :goto_0
    return-void

    .line 821
    :cond_0
    const-string v0, "Fail: IP addr not reachable"

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xw:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 823
    :catch_0
    move-exception v0

    .line 824
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xw:Ljava/lang/String;

    goto :goto_0

    .line 825
    :catch_1
    move-exception v0

    .line 826
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xw:Ljava/lang/String;

    goto :goto_0
.end method

.method private final gR()V
    .locals 2

    .prologue
    .line 835
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "ping -c 1 www.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 836
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 837
    if-nez v0, :cond_0

    .line 838
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xx:Ljava/lang/String;

    .line 849
    :goto_0
    return-void

    .line 840
    :cond_0
    const-string v0, "Fail: Host unreachable"

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xx:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 842
    :catch_0
    move-exception v0

    .line 843
    const-string v0, "Fail: Unknown Host"

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xx:Ljava/lang/String;

    goto :goto_0

    .line 844
    :catch_1
    move-exception v0

    .line 845
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xx:Ljava/lang/String;

    goto :goto_0

    .line 846
    :catch_2
    move-exception v0

    .line 847
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xx:Ljava/lang/String;

    goto :goto_0
.end method

.method private gS()V
    .locals 4

    .prologue
    .line 855
    const/4 v1, 0x0

    .line 858
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v2, "https://www.google.com"

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 861
    const-string v1, "Pass"

    iput-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xy:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 868
    :goto_0
    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 872
    :cond_0
    :goto_1
    return-void

    .line 863
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail: Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xy:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 865
    :catch_0
    move-exception v1

    .line 866
    :goto_2
    :try_start_3
    const-string v1, "Fail: IOException"

    iput-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xy:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 868
    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 868
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_2

    .line 869
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v0

    .line 868
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    .line 865
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method private gT()V
    .locals 3

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xu:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 876
    return-void
.end method

.method private final gU()V
    .locals 3

    .prologue
    const v2, 0x7f0c00fd

    .line 879
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 881
    invoke-virtual {p0}, Lcom/android/vendorsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xw:Ljava/lang/String;

    .line 882
    invoke-virtual {p0}, Lcom/android/vendorsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xx:Ljava/lang/String;

    .line 883
    invoke-virtual {p0}, Lcom/android/vendorsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xy:Ljava/lang/String;

    .line 885
    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xh:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->xw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xi:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->xx:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 887
    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xj:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->xy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 889
    new-instance v1, Lcom/android/vendorsettings/gO;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/gO;-><init>(Lcom/android/vendorsettings/RadioInfo;)V

    .line 896
    new-instance v2, Lcom/android/vendorsettings/gP;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/vendorsettings/gP;-><init>(Lcom/android/vendorsettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 903
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 905
    new-instance v2, Lcom/android/vendorsettings/gQ;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/vendorsettings/gQ;-><init>(Lcom/android/vendorsettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 912
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 914
    new-instance v2, Lcom/android/vendorsettings/gR;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/vendorsettings/gR;-><init>(Lcom/android/vendorsettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 921
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 922
    return-void
.end method

.method private final gV()V
    .locals 2

    .prologue
    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "========DATA=======\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 963
    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xd:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    return-void
.end method

.method private gW()Z
    .locals 2

    .prologue
    .line 1088
    const-string v0, "persist.radio.imsregrequired"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private gX()V
    .locals 2

    .prologue
    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImsRegRequiredState isImsRegRequired()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gW()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1093
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gW()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c00e7

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1096
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xL:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    return-void

    .line 1093
    :cond_0
    const v0, 0x7f0c00e6

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private gY()Z
    .locals 2

    .prologue
    .line 1113
    const-string v0, "persist.radio.imsallowmtsms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private gZ()Z
    .locals 2

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xu:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xu:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xu:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    .line 1147
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xu:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v0

    .line 1149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gJ()V

    return-void
.end method

.method private ha()V
    .locals 2

    .prologue
    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImsVoLteProvisionedState isImsVoLteProvisioned()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gZ()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1154
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gZ()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c00e9

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->getString(I)Ljava/lang/String;

    .line 1159
    :goto_0
    return-void

    .line 1154
    :cond_0
    const v0, 0x7f0c00e8

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->getString(I)Ljava/lang/String;

    goto :goto_0
.end method

.method private hb()V
    .locals 2

    .prologue
    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSmsOverImsState isSmsOverImsEnabled()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gY()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1163
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gY()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c00e5

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1166
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xN:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    return-void

    .line 1163
    :cond_0
    const v0, 0x7f0c00e4

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hc()Z
    .locals 2

    .prologue
    .line 1183
    const-string v0, "persist.radio.ramdump"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private hd()V
    .locals 2

    .prologue
    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLteRamDumpState isLteRamDumpEnabled()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->hc()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1188
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->hc()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c00eb

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1191
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xQ:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1192
    return-void

    .line 1188
    :cond_0
    const v0, 0x7f0c00ea

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic i(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->updatePhoneState()V

    return-void
.end method

.method private isRadioOn()Z
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xu:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gK()V

    return-void
.end method

.method static synthetic k(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gC()V

    return-void
.end method

.method static synthetic l(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->ha()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1275
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RadioInfo] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    return-void
.end method

.method private final m(Ljava/util/List;)V
    .locals 5

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/vendorsettings/RadioInfo;->xB:Ljava/util/List;

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 641
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xB:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 642
    const/4 v0, 0x0

    .line 643
    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 644
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 645
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 646
    const-string v4, "]="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 649
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v1, v0

    .line 651
    goto :goto_0

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wY:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    return-void
.end method

.method static synthetic m(Lcom/android/vendorsettings/RadioInfo;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/android/vendorsettings/RadioInfo;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xt:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic o(Lcom/android/vendorsettings/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xu:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic p(Lcom/android/vendorsettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wX:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/android/vendorsettings/RadioInfo;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xl:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic r(Lcom/android/vendorsettings/RadioInfo;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xq:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic s(Lcom/android/vendorsettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wT:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gH()V

    return-void
.end method

.method static synthetic u(Lcom/android/vendorsettings/RadioInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xw:Ljava/lang/String;

    return-object v0
.end method

.method private final updatePhoneState()V
    .locals 4

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->L:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .line 713
    invoke-virtual {p0}, Lcom/android/vendorsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 714
    const v0, 0x7f0c00fd

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 716
    sget-object v3, Lcom/android/vendorsettings/gM;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 728
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->wM:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    return-void

    .line 718
    :pswitch_0
    const v0, 0x7f0c00f6

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 721
    :pswitch_1
    const v0, 0x7f0c00f7

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 724
    :pswitch_2
    const v0, 0x7f0c00f8

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 716
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic v(Lcom/android/vendorsettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xh:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic w(Lcom/android/vendorsettings/RadioInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xx:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/android/vendorsettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xi:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic y(Lcom/android/vendorsettings/RadioInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z(Lcom/android/vendorsettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xj:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 295
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 297
    const v0, 0x7f040116

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->setContentView(I)V

    .line 299
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    invoke-virtual {p0}, Lcom/android/vendorsettings/RadioInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 301
    const-string v2, "phone_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    const-string v2, "phone1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-static {}, Lcom/android/vendorsettings/fy;->gg()Lcom/android/vendorsettings/fy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/fy;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xu:Lcom/android/internal/telephony/Phone;

    .line 304
    iput v1, p0, Lcom/android/vendorsettings/RadioInfo;->mSlotId:I

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/vendorsettings/RadioInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 306
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    iget v2, p0, Lcom/android/vendorsettings/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xv:Lmiui/telephony/SubscriptionInfo;

    .line 319
    :goto_0
    const v0, 0x7f130249

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wK:Landroid/widget/TextView;

    .line 320
    const v0, 0x7f130153

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wL:Landroid/widget/TextView;

    .line 321
    const v0, 0x7f13025b

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wM:Landroid/widget/TextView;

    .line 322
    const v0, 0x7f13024a

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wN:Landroid/widget/TextView;

    .line 323
    const v0, 0x7f130255

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wO:Landroid/widget/TextView;

    .line 324
    const v0, 0x7f130256

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wP:Landroid/widget/TextView;

    .line 325
    const v0, 0x7f130257

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wQ:Landroid/widget/TextView;

    .line 326
    const v0, 0x7f130258

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wR:Landroid/widget/TextView;

    .line 327
    const v0, 0x7f13024f

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wS:Landroid/widget/TextView;

    .line 328
    const v0, 0x7f130250

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wT:Landroid/widget/TextView;

    .line 329
    const v0, 0x7f130259

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wU:Landroid/widget/TextView;

    .line 330
    const v0, 0x7f13025a

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wV:Landroid/widget/TextView;

    .line 331
    const v0, 0x7f130251

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wW:Landroid/widget/TextView;

    .line 332
    const v0, 0x7f130252

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wX:Landroid/widget/TextView;

    .line 333
    const v0, 0x7f130253

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wY:Landroid/widget/TextView;

    .line 334
    const v0, 0x7f130254

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->wZ:Landroid/widget/TextView;

    .line 336
    const v0, 0x7f13025c

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xa:Landroid/widget/TextView;

    .line 337
    const v0, 0x7f13025d

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xb:Landroid/widget/TextView;

    .line 338
    const v0, 0x7f13025e

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xc:Landroid/widget/TextView;

    .line 339
    const v0, 0x7f13025f

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xd:Landroid/widget/TextView;

    .line 340
    const v0, 0x7f130262

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xe:Landroid/widget/TextView;

    .line 341
    const v0, 0x7f130260

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xf:Landroid/widget/TextView;

    .line 342
    const v0, 0x7f130261

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xg:Landroid/widget/TextView;

    .line 343
    const v0, 0x7f13026c

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xl:Landroid/widget/EditText;

    .line 344
    const v0, 0x7f13026e

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xk:Landroid/widget/TextView;

    .line 346
    const v0, 0x7f13024c

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xh:Landroid/widget/TextView;

    .line 347
    const v0, 0x7f13024d

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xi:Landroid/widget/TextView;

    .line 348
    const v0, 0x7f13024e

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xj:Landroid/widget/TextView;

    .line 350
    const v0, 0x7f130263

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xt:Landroid/widget/Spinner;

    .line 351
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    iget-object v3, p0, Lcom/android/vendorsettings/RadioInfo;->xY:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 353
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 354
    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->xt:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 355
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xt:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->xX:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 357
    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->xt:Landroid/widget/Spinner;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmiui/telephony/TelephonyManager;->isDisableLte(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 359
    const v0, 0x7f130264

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xm:Landroid/widget/Button;

    .line 360
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xm:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->xJ:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    const v0, 0x7f130265

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xn:Landroid/widget/Button;

    .line 363
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->xK:Lcom/android/vendorsettings/gU;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    const v0, 0x7f130266

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xL:Landroid/widget/Button;

    .line 366
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xL:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->xM:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    const v0, 0x7f130267

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xN:Landroid/widget/Button;

    .line 373
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xN:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->xO:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    const v0, 0x7f130268

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xQ:Landroid/widget/Button;

    .line 376
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xQ:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->xR:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    const v0, 0x7f13024b

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xp:Landroid/widget/Button;

    .line 379
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xp:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->xU:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    const v0, 0x7f13026a

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xq:Landroid/widget/Button;

    .line 381
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xq:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->xV:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    const v0, 0x7f13026b

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xr:Landroid/widget/Button;

    .line 383
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xr:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->xW:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    const v0, 0x7f13026d

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xo:Landroid/widget/Button;

    .line 385
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xo:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->xS:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    const v0, 0x7f13026f

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xs:Landroid/widget/Button;

    .line 388
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xs:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->xT:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    invoke-virtual {p0}, Lcom/android/vendorsettings/RadioInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 390
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.OEM_RADIO_INFO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 392
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xs:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 396
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->L:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 397
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->L:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 398
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->L:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 399
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->L:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyPhoneCallState(I)V

    .line 401
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xu:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 403
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xu:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 406
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 409
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManagerEx;->getAllCellInfoForSlot(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xB:Ljava/util/List;

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: mCellInfoValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xB:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 411
    return-void

    .line 308
    :cond_1
    invoke-static {}, Lcom/android/vendorsettings/fy;->gg()Lcom/android/vendorsettings/fy;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/vendorsettings/fy;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xu:Lcom/android/internal/telephony/Phone;

    .line 309
    iput v4, p0, Lcom/android/vendorsettings/RadioInfo;->mSlotId:I

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/vendorsettings/RadioInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 311
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    iget v2, p0, Lcom/android/vendorsettings/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xv:Lmiui/telephony/SubscriptionInfo;

    goto/16 :goto_0

    .line 314
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xu:Lcom/android/internal/telephony/Phone;

    .line 315
    iput v1, p0, Lcom/android/vendorsettings/RadioInfo;->mSlotId:I

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->xv:Lmiui/telephony/SubscriptionInfo;

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 357
    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 468
    const v0, 0x7f0c00ec

    invoke-interface {p1, v2, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xD:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 470
    const/4 v0, 0x2

    const v1, 0x7f0c00ed

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xE:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 472
    const/4 v0, 0x3

    const v1, 0x7f0c00ee

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xF:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 474
    const/4 v0, 0x4

    const v1, 0x7f0c00ef

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xG:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 476
    const/4 v0, 0x5

    const-string v1, "Disable data connection"

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xI:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 478
    return v2
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 453
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 455
    const-string v0, "onPause: unregister phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->L:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 458
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/RadioInfo;->mSlotId:I

    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->xC:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lmiui/telephony/TelephonyManagerEx;->listenForSlot(ILandroid/telephony/PhoneStateListener;I)V

    .line 459
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 484
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 485
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v3, p0, Lcom/android/vendorsettings/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v3}, Lmiui/telephony/TelephonyManagerEx;->getDataStateForSlot(I)I

    move-result v0

    .line 488
    packed-switch v0, :pswitch_data_0

    .line 497
    :pswitch_0
    const/4 v0, 0x0

    .line 500
    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 501
    return v1

    .line 491
    :pswitch_1
    const-string v0, "Disable data connection"

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move v0, v1

    .line 492
    goto :goto_0

    .line 494
    :pswitch_2
    const-string v0, "Enable data connection"

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move v0, v1

    .line 495
    goto :goto_0

    .line 488
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 415
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 418
    iget-object v1, p0, Lcom/android/vendorsettings/RadioInfo;->xt:Landroid/widget/Spinner;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/telephony/TelephonyManager;->isDisableLte(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 419
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->updatePhoneState()V

    .line 420
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gF()V

    .line 421
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gI()V

    .line 422
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gJ()V

    .line 423
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gK()V

    .line 424
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManagerEx;->getCellLocationForSlot(I)Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->a(Landroid/telephony/CellLocation;)V

    .line 425
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gL()V

    .line 426
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gO()V

    .line 427
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gP()V

    .line 428
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gC()V

    .line 429
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gD()V

    .line 430
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gX()V

    .line 431
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->ha()V

    .line 432
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->hb()V

    .line 433
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->hd()V

    .line 434
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gN()V

    .line 435
    invoke-direct {p0}, Lcom/android/vendorsettings/RadioInfo;->gE()V

    .line 437
    const-string v0, "onResume: register phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/android/vendorsettings/RadioInfo;->L:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 440
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/RadioInfo;->mSlotId:I

    iget-object v2, p0, Lcom/android/vendorsettings/RadioInfo;->xC:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x25dc

    invoke-virtual {v0, v1, v2, v3}, Lmiui/telephony/TelephonyManagerEx;->listenForSlot(ILandroid/telephony/PhoneStateListener;I)V

    .line 449
    return-void

    .line 418
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
