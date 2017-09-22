.class public Lcom/android/vendorsettings/applications/LinearColorPreference;
.super Landroid/preference/Preference;
.source "LinearColorPreference.java"


# instance fields
.field JE:Lcom/android/vendorsettings/applications/LinearColorBar$OnRegionTappedListener;

.field JF:I

.field JQ:I

.field JR:I

.field JS:I

.field Jw:F

.field Jx:F

.field Jy:F


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 67
    const v0, 0x7f1301c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/LinearColorBar;

    .line 69
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/LinearColorBar;->aq(Z)V

    .line 70
    iget v1, p0, Lcom/android/vendorsettings/applications/LinearColorPreference;->JQ:I

    iget v2, p0, Lcom/android/vendorsettings/applications/LinearColorPreference;->JR:I

    iget v3, p0, Lcom/android/vendorsettings/applications/LinearColorPreference;->JS:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vendorsettings/applications/LinearColorBar;->a(III)V

    .line 71
    iget v1, p0, Lcom/android/vendorsettings/applications/LinearColorPreference;->Jw:F

    iget v2, p0, Lcom/android/vendorsettings/applications/LinearColorPreference;->Jx:F

    iget v3, p0, Lcom/android/vendorsettings/applications/LinearColorPreference;->Jy:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vendorsettings/applications/LinearColorBar;->a(FFF)V

    .line 72
    iget v1, p0, Lcom/android/vendorsettings/applications/LinearColorPreference;->JF:I

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/LinearColorBar;->aL(I)V

    .line 73
    iget-object v1, p0, Lcom/android/vendorsettings/applications/LinearColorPreference;->JE:Lcom/android/vendorsettings/applications/LinearColorBar$OnRegionTappedListener;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/LinearColorBar;->a(Lcom/android/vendorsettings/applications/LinearColorBar$OnRegionTappedListener;)V

    .line 74
    return-void
.end method
