.class Lcom/android/vendorsettings/dP;
.super Ljava/lang/Object;
.source "LockSecureAfterTimeout.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic pI:Lcom/android/vendorsettings/LockSecureAfterTimeout;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/LockSecureAfterTimeout;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/android/vendorsettings/dP;->pI:Lcom/android/vendorsettings/LockSecureAfterTimeout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 17
    iget-object v0, p0, Lcom/android/vendorsettings/dP;->pI:Lcom/android/vendorsettings/LockSecureAfterTimeout;

    invoke-virtual {v0}, Lcom/android/vendorsettings/LockSecureAfterTimeout;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_lock_screen_secure_after_timeout"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 19
    iget-object v0, p0, Lcom/android/vendorsettings/dP;->pI:Lcom/android/vendorsettings/LockSecureAfterTimeout;

    invoke-static {v0}, Lcom/android/vendorsettings/LockSecureAfterTimeout;->a(Lcom/android/vendorsettings/LockSecureAfterTimeout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    .line 20
    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 22
    :cond_1
    return v2
.end method
