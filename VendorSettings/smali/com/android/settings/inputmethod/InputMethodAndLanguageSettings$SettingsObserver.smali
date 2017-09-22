.class Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodAndLanguageSettings.java"


# instance fields
.field final synthetic afZ:Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->afZ:Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings;

    .line 699
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 700
    iput-object p3, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->mContext:Landroid/content/Context;

    .line 701
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->afZ:Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings;->a(Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings;)V

    .line 705
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 717
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 708
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 709
    const-string v1, "default_input_method"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 711
    const-string v1, "selected_input_method_subtype"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 713
    return-void
.end method
