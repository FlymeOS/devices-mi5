.class public Lcom/android/settings/wifi/g;
.super Lcom/android/settings/wifi/a;
.source "MiuiAccessPointPreference.java"


# static fields
.field private static aAt:Ljava/util/Comparator;


# instance fields
.field private aAm:Landroid/view/View$OnClickListener;

.field private aAn:Z

.field private aAo:Z

.field private aAp:Z

.field private aAq:Z

.field private aAr:I

.field private aAs:I

.field private mContext:Landroid/content/Context;

.field private uG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lcom/android/settings/wifi/h;

    invoke-direct {v0}, Lcom/android/settings/wifi/h;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/g;->aAt:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/b/e/a;Landroid/content/Context;Lcom/android/settings/wifi/c;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/wifi/a;-><init>(Lcom/android/b/e/a;Landroid/content/Context;Lcom/android/settings/wifi/c;Z)V

    .line 55
    iput-boolean v0, p0, Lcom/android/settings/wifi/g;->aAn:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/wifi/g;->aAo:Z

    .line 69
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/g;->init(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method private d(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 92
    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 74
    iput-object p1, p0, Lcom/android/settings/wifi/g;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/g;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/g;->uG:Z

    .line 79
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 82
    sget v3, Lmiui/R$attr;->textColorChecked:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 83
    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/g;->aAr:I

    .line 85
    sget v3, Lmiui/R$attr;->preferencePrimaryTextColor:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 86
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/g;->aAs:I

    .line 88
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static xb()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/android/settings/wifi/g;->aAt:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/b/e/a;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/settings/wifi/g;->azP:Lcom/android/b/e/a;

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/wifi/g;->refresh()V

    .line 164
    return-void
.end method

.method public bA(Z)V
    .locals 0

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/settings/wifi/g;->aAp:Z

    .line 168
    return-void
.end method

.method public bB(Z)V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/settings/wifi/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/iC;->Y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 188
    const/4 p1, 0x0

    .line 190
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/wifi/g;->aAq:Z

    .line 191
    return-void
.end method

.method public d(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings/wifi/g;->aAm:Landroid/view/View$OnClickListener;

    .line 180
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8

    .prologue
    const v7, 0x1020001

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/wifi/a;->onBindView(Landroid/view/View;)V

    .line 98
    const v0, 0x7f1301db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 99
    sget v1, Lmiui/R$drawable;->btn_inline_detail_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-boolean v1, p0, Lcom/android/settings/wifi/g;->aAn:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 101
    iget-boolean v1, p0, Lcom/android/settings/wifi/g;->aAn:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/g;->aAm:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-boolean v1, p0, Lcom/android/settings/wifi/g;->aAo:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    const v0, 0x7f1301df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 105
    const v0, 0x7f1301e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 106
    const v0, 0x7f1301e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 116
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 117
    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/wifi/g;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 119
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    iget v1, p0, Lcom/android/settings/wifi/g;->aAr:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    .line 126
    :goto_2
    iget-boolean v1, p0, Lcom/android/settings/wifi/g;->aAq:Z

    if-eqz v1, :cond_4

    .line 127
    const v1, 0x7f0200a3

    .line 131
    :goto_3
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0b00fe

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    .line 132
    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 134
    iget-boolean v0, p0, Lcom/android/settings/wifi/g;->uG:Z

    if-eqz v0, :cond_6

    .line 135
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/wifi/g;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/wifi/g;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 142
    :goto_5
    const v0, 0x7f1301e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/wifi/g;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/wifi/g;->wP()Lcom/android/b/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/b/e/a;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 146
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 147
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/wifi/g;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/g;->wP()Lcom/android/b/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/b/e/a;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/g;->wP()Lcom/android/b/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/b/e/a;->AJ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WPA"

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/g;->uG:Z

    if-nez v0, :cond_0

    .line 150
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 151
    iget-object v1, p0, Lcom/android/settings/wifi/g;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0f55

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_0
    return-void

    :cond_1
    move-object v1, v2

    .line 101
    goto/16 :goto_0

    :cond_2
    move v1, v4

    .line 102
    goto/16 :goto_1

    .line 122
    :cond_3
    iget v1, p0, Lcom/android/settings/wifi/g;->aAs:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 128
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/g;->xa()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/wifi/g;->wP()Lcom/android/b/e/a;

    move-result-object v1

    iget-object v1, v1, Lcom/android/b/e/a;->aKI:Landroid/net/wifi/ScanResult;

    invoke-static {v1}, Lcom/android/settings/wifi/bi;->e(Landroid/net/wifi/ScanResult;)I

    move-result v1

    goto/16 :goto_3

    :cond_5
    move v3, v5

    .line 136
    goto/16 :goto_4

    .line 139
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiui/R$dimen;->preference_custom_widget_margin_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 140
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

    goto/16 :goto_5

    :cond_7
    move v1, v3

    goto/16 :goto_3
.end method

.method public setChecked(Z)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public xa()Z
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/settings/wifi/g;->wP()Lcom/android/b/e/a;

    move-result-object v0

    iget-object v0, v0, Lcom/android/b/e/a;->aKI:Landroid/net/wifi/ScanResult;

    invoke-static {v0}, Lcom/android/settings/wifi/bi;->d(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    return v0
.end method

.method public xc()Z
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/settings/wifi/g;->wP()Lcom/android/b/e/a;

    move-result-object v0

    iget v0, v0, Lcom/android/b/e/a;->aKG:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
