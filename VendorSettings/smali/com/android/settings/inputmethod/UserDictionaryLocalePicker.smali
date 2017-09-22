.class public Lcom/android/vendorsettings/inputmethod/UserDictionaryLocalePicker;
.super Lcom/android/vendorsettings/MiuiLocalePicker;
.source "UserDictionaryLocalePicker.java"


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordFragment;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiLocalePicker;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/inputmethod/UserDictionaryLocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 29
    return-void
.end method
