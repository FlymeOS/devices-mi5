.class Lcom/android/settings/inputmethod/InputMethodSubtypePreference;
.super Lcom/android/settings/inputmethod/SwitchWithNoTextPreference;
.source "InputMethodSubtypePreference.java"


# instance fields
.field private final mIsSystemLanguage:Z

.field private final mIsSystemLocale:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SwitchWithNoTextPreference;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->setPersistent(Z)V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->setKey(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p1, v1, v2}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 46
    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    iput-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    .line 58
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 53
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    .line 54
    iget-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-nez v3, :cond_1

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/preference/Preference;Ljava/text/Collator;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 61
    if-ne p0, p1, :cond_0

    move v0, v1

    .line 91
    :goto_0
    return v0

    .line 64
    :cond_0
    instance-of v0, p1, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;

    if-eqz v0, :cond_8

    move-object v0, p1

    .line 65
    check-cast v0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 67
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    .line 68
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v1

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-eqz v1, :cond_2

    move v0, v2

    .line 72
    goto :goto_0

    .line 74
    :cond_2
    iget-boolean v1, v0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-eqz v1, :cond_3

    move v0, v3

    .line 75
    goto :goto_0

    .line 77
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    if-eqz v1, :cond_4

    move v0, v2

    .line 78
    goto :goto_0

    .line 80
    :cond_4
    iget-boolean v0, v0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    if-eqz v0, :cond_5

    move v0, v3

    .line 81
    goto :goto_0

    .line 83
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    .line 84
    goto :goto_0

    .line 86
    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 87
    goto :goto_0

    .line 89
    :cond_7
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 91
    :cond_8
    invoke-super {p0, p1}, Lcom/android/settings/inputmethod/SwitchWithNoTextPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    goto :goto_0
.end method
