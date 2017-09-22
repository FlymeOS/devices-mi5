.class Lcom/android/vendorsettings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ToggleScreenMagnificationPreferenceFragment.java"

# interfaces
.implements Lcom/android/vendorsettings/widget/L;


# instance fields
.field final synthetic DG:Lcom/android/vendorsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/vendorsettings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->DG:Lcom/android/vendorsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/widget/K;Z)Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->DG:Lcom/android/vendorsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v0, v0, Lcom/android/vendorsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;->me:Lcom/android/vendorsettings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/vendorsettings/widget/SwitchBar;->bw(Z)V

    .line 55
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->DG:Lcom/android/vendorsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->DG:Lcom/android/vendorsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->DG:Lcom/android/vendorsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v1, v1, Lcom/android/vendorsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;->zW:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/vendorsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;->b(Ljava/lang/String;Z)V

    .line 57
    const/4 v0, 0x0

    return v0
.end method
