.class Lcom/android/vendorsettings/accessibility/CaptionPropertiesFragment$3;
.super Ljava/lang/Object;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic Dl:Lcom/android/vendorsettings/accessibility/CaptionPropertiesFragment;

.field final synthetic Dm:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/accessibility/CaptionPropertiesFragment;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/vendorsettings/accessibility/CaptionPropertiesFragment$3;->Dl:Lcom/android/vendorsettings/accessibility/CaptionPropertiesFragment;

    iput-object p2, p0, Lcom/android/vendorsettings/accessibility/CaptionPropertiesFragment$3;->Dm:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 269
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/CaptionPropertiesFragment$3;->Dm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 270
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/CaptionPropertiesFragment$3;->Dl:Lcom/android/vendorsettings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_captioning_enabled"

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 272
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/CaptionPropertiesFragment$3;->Dl:Lcom/android/vendorsettings/accessibility/CaptionPropertiesFragment;

    invoke-static {v0, v2}, Lcom/android/vendorsettings/accessibility/CaptionPropertiesFragment;->a(Lcom/android/vendorsettings/accessibility/CaptionPropertiesFragment;Z)V

    .line 273
    return v1

    .line 270
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
