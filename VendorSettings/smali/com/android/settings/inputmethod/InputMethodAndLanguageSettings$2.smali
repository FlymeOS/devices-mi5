.class Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings$2;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic afZ:Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings;

.field final synthetic aga:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings;Ljava/text/Collator;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings$2;->afZ:Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings;

    iput-object p2, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings$2;->aga:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/inputmethod/InputMethodPreference;Lcom/android/vendorsettings/inputmethod/InputMethodPreference;)I
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings$2;->aga:Ljava/text/Collator;

    invoke-virtual {p1, p2, v0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->a(Lcom/android/vendorsettings/inputmethod/InputMethodPreference;Ljava/text/Collator;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 477
    check-cast p1, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;

    check-cast p2, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;

    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings$2;->a(Lcom/android/vendorsettings/inputmethod/InputMethodPreference;Lcom/android/vendorsettings/inputmethod/InputMethodPreference;)I

    move-result v0

    return v0
.end method
