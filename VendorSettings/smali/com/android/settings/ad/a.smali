.class Lcom/android/settings/ad/a;
.super Ljava/lang/Object;
.source "AdServiceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic ER:Lcom/android/settings/ad/AdServiceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ad/AdServiceSettings;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/settings/ad/a;->ER:Lcom/android/settings/ad/AdServiceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/ad/a;->ER:Lcom/android/settings/ad/AdServiceSettings;

    invoke-static {v0}, Lcom/android/settings/ad/AdServiceSettings;->a(Lcom/android/settings/ad/AdServiceSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Ad;->setPersonalizedAdEnable(Landroid/content/ContentResolver;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
