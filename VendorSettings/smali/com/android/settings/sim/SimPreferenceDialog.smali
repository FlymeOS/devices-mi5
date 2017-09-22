.class public Lcom/android/vendorsettings/sim/SimPreferenceDialog;
.super Landroid/app/Activity;
.source "SimPreferenceDialog.java"


# instance fields
.field private apF:Landroid/telephony/SubscriptionInfo;

.field private apG:[I

.field private apH:[Ljava/lang/String;

.field private apI:I

.field apJ:Landroid/app/AlertDialog$Builder;

.field apK:Landroid/view/View;

.field private final apL:Ljava/lang/String;

.field private final apM:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mSlotId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const-string v0, "sim_name"

    iput-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apL:Ljava/lang/String;

    .line 56
    const-string v0, "tint_pos"

    iput-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apM:Ljava/lang/String;

    .line 187
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/sim/SimPreferenceDialog;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apI:I

    return p1
.end method

.method static synthetic a(Lcom/android/vendorsettings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apF:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionManager;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/sim/SimPreferenceDialog;)[I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apG:[I

    return-object v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/sim/SimPreferenceDialog;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apI:I

    return v0
.end method

.method private i(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v7, 0x104000e

    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 105
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apK:Landroid/view/View;

    const v1, 0x7f130150

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 106
    iget-object v1, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apF:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apK:Landroid/view/View;

    const v1, 0x7f130151

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 109
    new-instance v1, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter;

    iget-object v2, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f04013a

    iget-object v6, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apH:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v5, v6}, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter;-><init>(Lcom/android/vendorsettings/sim/SimPreferenceDialog;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 111
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/sim/SimPreferenceDialog$SelectColorAdapter;->setDropDownViewResource(I)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move v1, v3

    .line 114
    :goto_0
    iget-object v2, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apG:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apG:[I

    aget v2, v2, v1

    iget-object v5, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apF:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v5

    if-ne v2, v5, :cond_1

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 117
    iput v1, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apI:I

    .line 122
    :cond_0
    new-instance v1, Lcom/android/vendorsettings/sim/SimPreferenceDialog$1;

    invoke-direct {v1, p0, v0}, Lcom/android/vendorsettings/sim/SimPreferenceDialog$1;-><init>(Lcom/android/vendorsettings/sim/SimPreferenceDialog;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 135
    iget-object v1, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 137
    iget-object v2, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apK:Landroid/view/View;

    const v5, 0x7f130153

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 138
    iget-object v5, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apF:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 141
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_1
    iget-object v2, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apF:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    iget-object v1, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apK:Landroid/view/View;

    const v5, 0x7f130152

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 149
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apJ:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c09fd

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apF:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 155
    iget-object v1, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apJ:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c01a7

    new-instance v3, Lcom/android/vendorsettings/sim/SimPreferenceDialog$2;

    invoke-direct {v3, p0, v0}, Lcom/android/vendorsettings/sim/SimPreferenceDialog$2;-><init>(Lcom/android/vendorsettings/sim/SimPreferenceDialog;Landroid/widget/Spinner;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apJ:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c01a6

    new-instance v2, Lcom/android/vendorsettings/sim/SimPreferenceDialog$3;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/sim/SimPreferenceDialog$3;-><init>(Lcom/android/vendorsettings/sim/SimPreferenceDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apJ:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 185
    return-void

    .line 114
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 143
    :cond_2
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 149
    :cond_3
    iget-object v2, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iput-object p0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p0}, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    const-string v1, "slot_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->mSlotId:I

    .line 64
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 65
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v1, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->mSlotId:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apF:Landroid/telephony/SubscriptionInfo;

    .line 66
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apG:[I

    .line 67
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apH:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apI:I

    .line 70
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apJ:Landroid/app/AlertDialog$Builder;

    .line 71
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 73
    const v1, 0x7f0400b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apK:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apJ:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apK:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->i(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 94
    const-string v0, "tint_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 95
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apK:Landroid/view/View;

    const v2, 0x7f130151

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 97
    iput v1, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apI:I

    .line 99
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apK:Landroid/view/View;

    const v1, 0x7f130150

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 100
    const-string v1, "sim_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 81
    const-string v0, "tint_pos"

    iget v1, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apI:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apK:Landroid/view/View;

    const v1, 0x7f130150

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 84
    const-string v1, "sim_name"

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 88
    return-void
.end method
