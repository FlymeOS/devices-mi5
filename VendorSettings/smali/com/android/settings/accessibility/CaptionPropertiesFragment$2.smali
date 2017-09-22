.class Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;
.super Ljava/lang/Object;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Lcom/android/settings/widget/M;


# instance fields
.field final synthetic Dl:Lcom/android/settings/accessibility/CaptionPropertiesFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->Dl:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->Dl:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->b(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->bw(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->Dl:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_captioning_enabled"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->Dl:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->Dl:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->c(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->Dl:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->c(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object v2

    if-eqz p2, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 256
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 250
    goto :goto_0

    .line 254
    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method
