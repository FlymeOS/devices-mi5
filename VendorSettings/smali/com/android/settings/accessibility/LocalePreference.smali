.class public Lcom/android/vendorsettings/accessibility/LocalePreference;
.super Landroid/preference/ListPreference;
.source "LocalePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/accessibility/LocalePreference;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/accessibility/LocalePreference;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-static {p1, v0}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v2

    .line 47
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 48
    add-int/lit8 v1, v3, 0x1

    new-array v4, v1, [Ljava/lang/CharSequence;

    .line 49
    add-int/lit8 v1, v3, 0x1

    new-array v5, v1, [Ljava/lang/CharSequence;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0c06cc

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 51
    const-string v1, ""

    aput-object v1, v5, v0

    move v1, v0

    .line 53
    :goto_0
    if-ge v1, v3, :cond_0

    .line 54
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 55
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 56
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 53
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/accessibility/LocalePreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0, v5}, Lcom/android/vendorsettings/accessibility/LocalePreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method
