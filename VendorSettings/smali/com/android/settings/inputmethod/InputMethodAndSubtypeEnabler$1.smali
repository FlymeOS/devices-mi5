.class Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler$1;
.super Ljava/lang/Object;
.source "InputMethodAndSubtypeEnabler.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic agg:Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler$1;->agg:Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/preference/Preference;Landroid/preference/Preference;)I
    .locals 1

    .prologue
    .line 208
    instance-of v0, p1, Lcom/android/vendorsettings/inputmethod/InputMethodSubtypePreference;

    if-eqz v0, :cond_0

    .line 209
    check-cast p1, Lcom/android/vendorsettings/inputmethod/InputMethodSubtypePreference;

    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler$1;->agg:Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;

    invoke-static {v0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->a(Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;)Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/vendorsettings/inputmethod/InputMethodSubtypePreference;->a(Landroid/preference/Preference;Ljava/text/Collator;)I

    move-result v0

    .line 211
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 205
    check-cast p1, Landroid/preference/Preference;

    check-cast p2, Landroid/preference/Preference;

    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler$1;->a(Landroid/preference/Preference;Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method
