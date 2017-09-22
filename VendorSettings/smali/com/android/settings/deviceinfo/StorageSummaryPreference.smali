.class public Lcom/android/vendorsettings/deviceinfo/StorageSummaryPreference;
.super Landroid/preference/Preference;
.source "StorageSummaryPreference.java"


# instance fields
.field private Xj:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageSummaryPreference;->Xj:I

    .line 34
    const v0, 0x7f04015f

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/StorageSummaryPreference;->setLayoutResource(I)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/StorageSummaryPreference;->setEnabled(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public bx(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/android/vendorsettings/deviceinfo/StorageSummaryPreference;->Xj:I

    .line 40
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 44
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 45
    iget v1, p0, Lcom/android/vendorsettings/deviceinfo/StorageSummaryPreference;->Xj:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 46
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 47
    iget v1, p0, Lcom/android/vendorsettings/deviceinfo/StorageSummaryPreference;->Xj:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 52
    :goto_0
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    const-string v1, "#8a000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 56
    return-void

    .line 49
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
