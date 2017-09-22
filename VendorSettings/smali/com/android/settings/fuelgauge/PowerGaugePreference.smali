.class public Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;
.super Lcom/android/vendorsettings/H;
.source "PowerGaugePreference.java"


# instance fields
.field private afi:Lcom/android/vendorsettings/fuelgauge/BatteryEntry;

.field private final mContentDescription:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/vendorsettings/fuelgauge/BatteryEntry;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vendorsettings/H;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 40
    iput-object p4, p0, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;->afi:Lcom/android/vendorsettings/fuelgauge/BatteryEntry;

    .line 41
    iput-object p3, p0, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 42
    return-void

    .line 39
    :cond_0
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(DD)V
    .locals 3

    .prologue
    .line 45
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;->setProgress(I)V

    .line 46
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p3

    double-to-int v0, v0

    invoke-static {v0}, Lcom/android/vendorsettings/iC;->ar(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/vendorsettings/H;->onBindView(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 58
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    return-void
.end method

.method qX()Lcom/android/vendorsettings/fuelgauge/BatteryEntry;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;->afi:Lcom/android/vendorsettings/fuelgauge/BatteryEntry;

    return-object v0
.end method
