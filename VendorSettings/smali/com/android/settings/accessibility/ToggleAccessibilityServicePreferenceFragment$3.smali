.class Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;
.super Ljava/lang/Object;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Lcom/android/vendorsettings/widget/L;


# instance fields
.field final synthetic Dx:Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->Dx:Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/widget/K;Z)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 442
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->Dx:Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object v3, v0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->DA:Lcom/android/vendorsettings/widget/K;

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/vendorsettings/widget/K;->bw(Z)V

    .line 443
    if-eqz p2, :cond_1

    .line 444
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->Dx:Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object v0, v0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->me:Lcom/android/vendorsettings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/widget/SwitchBar;->bw(Z)V

    .line 445
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->Dx:Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "checked"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->Dx:Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {v0, v1}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->a(Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V

    .line 452
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 442
    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->Dx:Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object v0, v0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->me:Lcom/android/vendorsettings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/widget/SwitchBar;->bw(Z)V

    .line 449
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->Dx:Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "checked"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 450
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->Dx:Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->b(Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V

    goto :goto_1
.end method
