.class Lcom/android/vendorsettings/inputmethod/InputMethodPreference$2;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic agn:Lcom/android/vendorsettings/inputmethod/InputMethodPreference;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/inputmethod/InputMethodPreference;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference$2;->agn:Lcom/android/vendorsettings/inputmethod/InputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference$2;->agn:Lcom/android/vendorsettings/inputmethod/InputMethodPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 241
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference$2;->agn:Lcom/android/vendorsettings/inputmethod/InputMethodPreference;

    invoke-static {v0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->b(Lcom/android/vendorsettings/inputmethod/InputMethodPreference;)Lcom/android/vendorsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference$2;->agn:Lcom/android/vendorsettings/inputmethod/InputMethodPreference;

    invoke-interface {v0, v1}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;->a(Lcom/android/vendorsettings/inputmethod/InputMethodPreference;)V

    .line 242
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference$2;->agn:Lcom/android/vendorsettings/inputmethod/InputMethodPreference;

    invoke-static {v0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->d(Lcom/android/vendorsettings/inputmethod/InputMethodPreference;)V

    .line 243
    return-void
.end method
