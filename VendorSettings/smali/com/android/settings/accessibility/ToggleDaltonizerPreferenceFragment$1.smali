.class Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ToggleDaltonizerPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic Dz:Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment$1;->Dz:Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment$1;->Dz:Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment$1;->Dz:Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->zW:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->b(Ljava/lang/String;Z)V

    .line 98
    const/4 v0, 0x1

    return v0
.end method
