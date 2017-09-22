.class Lcom/android/vendorsettings/display/o;
.super Ljava/lang/Object;
.source "ForceTouchGuideActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic Yr:Lcom/android/vendorsettings/display/ForceTouchGuideActivity;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/display/ForceTouchGuideActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/vendorsettings/display/o;->Yr:Lcom/android/vendorsettings/display/ForceTouchGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/vendorsettings/display/o;->Yr:Lcom/android/vendorsettings/display/ForceTouchGuideActivity;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->a(Lcom/android/vendorsettings/display/ForceTouchGuideActivity;Z)Z

    .line 76
    iget-object v0, p0, Lcom/android/vendorsettings/display/o;->Yr:Lcom/android/vendorsettings/display/ForceTouchGuideActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->b(Lcom/android/vendorsettings/display/ForceTouchGuideActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/display/o;->Yr:Lcom/android/vendorsettings/display/ForceTouchGuideActivity;

    invoke-static {v1}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->c(Lcom/android/vendorsettings/display/ForceTouchGuideActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$ForceTouch;->setEnabled(Landroid/content/Context;Z)Z

    .line 77
    iget-object v0, p0, Lcom/android/vendorsettings/display/o;->Yr:Lcom/android/vendorsettings/display/ForceTouchGuideActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->d(Lcom/android/vendorsettings/display/ForceTouchGuideActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/display/o;->Yr:Lcom/android/vendorsettings/display/ForceTouchGuideActivity;

    invoke-static {v1}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->c(Lcom/android/vendorsettings/display/ForceTouchGuideActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/display/o;->Yr:Lcom/android/vendorsettings/display/ForceTouchGuideActivity;

    iget-object v1, p0, Lcom/android/vendorsettings/display/o;->Yr:Lcom/android/vendorsettings/display/ForceTouchGuideActivity;

    invoke-static {v1}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->c(Lcom/android/vendorsettings/display/ForceTouchGuideActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->b(Lcom/android/vendorsettings/display/ForceTouchGuideActivity;Z)V

    .line 79
    const/4 v0, 0x1

    return v0
.end method
