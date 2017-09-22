.class public Lcom/android/settings/wifi/M;
.super Landroid/widget/BaseAdapter;
.source "MultiSimAdapter.java"


# static fields
.field private static final aBw:[I


# instance fields
.field private aBx:I

.field private aBy:Ljava/util/List;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/M;->aBw:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0202c5
        0x7f0202c6
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/settings/wifi/M;->mContext:Landroid/content/Context;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/M;->aBx:I

    .line 39
    iget-object v0, p0, Lcom/android/settings/wifi/M;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/M;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/M;->aBy:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public dD(I)Lmiui/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/M;->aBy:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/M;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/settings/wifi/M;->aBy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/SubscriptionInfo;

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dE(I)V
    .locals 0

    .prologue
    .line 77
    if-ltz p1, :cond_0

    .line 78
    iput p1, p0, Lcom/android/settings/wifi/M;->aBx:I

    .line 79
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/wifi/M;->aBy:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/settings/wifi/M;->aBy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 87
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/M;->aBy:Ljava/util/List;

    .line 88
    if-nez p2, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/M;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400b6

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 90
    new-instance v1, Lcom/android/settings/wifi/O;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/O;-><init>(Lcom/android/settings/wifi/M;Lcom/android/settings/wifi/N;)V

    .line 91
    const v0, 0x7f13014b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, v1, Lcom/android/settings/wifi/O;->aBz:Landroid/widget/CheckedTextView;

    .line 93
    const v0, 0x7f13014c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/settings/wifi/O;->aBA:Landroid/widget/ImageView;

    .line 94
    const v0, 0x7f13014d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/wifi/O;->aBB:Landroid/widget/TextView;

    .line 95
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 100
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/M;->dD(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v1

    .line 101
    if-nez v1, :cond_1

    .line 102
    iget-object v1, v0, Lcom/android/settings/wifi/O;->aBz:Landroid/widget/CheckedTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, v0, Lcom/android/settings/wifi/O;->aBA:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    iget-object v1, v0, Lcom/android/settings/wifi/O;->aBB:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, v0, Lcom/android/settings/wifi/O;->aBz:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 128
    :goto_1
    return-object p2

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/O;

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    iget-object v3, v0, Lcom/android/settings/wifi/O;->aBz:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    sget-object v2, Lcom/android/settings/wifi/M;->aBw:[I

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    aget v2, v2, v3

    .line 113
    if-lez v2, :cond_2

    .line 114
    iget-object v3, v0, Lcom/android/settings/wifi/O;->aBA:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    :goto_2
    iget-object v2, v0, Lcom/android/settings/wifi/O;->aBB:Landroid/widget/TextView;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, v0, Lcom/android/settings/wifi/O;->aBA:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v2, v0, Lcom/android/settings/wifi/O;->aBB:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    int-to-long v2, v1

    iget v1, p0, Lcom/android/settings/wifi/M;->aBx:I

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/M;->getItemId(I)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 122
    iget-object v0, v0, Lcom/android/settings/wifi/O;->aBz:Landroid/widget/CheckedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    .line 116
    :cond_2
    iget-object v2, v0, Lcom/android/settings/wifi/O;->aBA:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 124
    :cond_3
    iget-object v0, v0, Lcom/android/settings/wifi/O;->aBz:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/M;->dD(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/M;->dD(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/M;->dD(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    int-to-long v0, v0

    .line 64
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 137
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/M;->aBy:Ljava/util/List;

    .line 138
    if-nez p2, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/M;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400b7

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 140
    new-instance v1, Lcom/android/settings/wifi/P;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/P;-><init>(Lcom/android/settings/wifi/M;Lcom/android/settings/wifi/N;)V

    .line 141
    const v0, 0x7f13014e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, v1, Lcom/android/settings/wifi/P;->aBz:Landroid/widget/CheckedTextView;

    .line 142
    const v0, 0x7f13014c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/settings/wifi/P;->aBA:Landroid/widget/ImageView;

    .line 143
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 148
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/M;->dD(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v1

    .line 149
    if-nez v1, :cond_1

    .line 150
    iget-object v1, v0, Lcom/android/settings/wifi/P;->aBz:Landroid/widget/CheckedTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v1, v0, Lcom/android/settings/wifi/P;->aBA:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    :goto_1
    iget-object v0, v0, Lcom/android/settings/wifi/P;->aBz:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 168
    return-object p2

    .line 145
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/P;

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    iget-object v3, v0, Lcom/android/settings/wifi/P;->aBz:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    sget-object v2, Lcom/android/settings/wifi/M;->aBw:[I

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    aget v1, v2, v1

    .line 159
    if-lez v1, :cond_2

    .line 160
    iget-object v2, v0, Lcom/android/settings/wifi/P;->aBA:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    :goto_2
    iget-object v1, v0, Lcom/android/settings/wifi/P;->aBA:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 162
    :cond_2
    iget-object v1, v0, Lcom/android/settings/wifi/P;->aBA:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/M;->dD(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
