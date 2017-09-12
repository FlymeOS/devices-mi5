.class Lcom/android/internal/app/LocalePickerInjector;
.super Ljava/lang/Object;
.source "LocalePickerInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDisplayLanguage(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;
    .param p3, "defaultDisplayName"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 33
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    aget-object p3, p2, v1

    .line 37
    .end local p3    # "defaultDisplayName":Ljava/lang/String;
    :cond_0
    return-object p3

    .line 32
    .restart local p3    # "defaultDisplayName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static removeDuplicate(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 22
    :cond_0
    return-void

    .line 17
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 18
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 17
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method static sortLocaleInfos([Lcom/android/internal/app/LocalePicker$LocaleInfo;Landroid/content/Context;)V
    .locals 3
    .param p0, "localeInfos"    # [Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_0

    .line 43
    const v0, 0x1108000c

    .line 47
    .local v0, "resId":I
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "topLocales":[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/app/LocalePickerInjector$1;

    invoke-direct {v2, v1}, Lcom/android/internal/app/LocalePickerInjector$1;-><init>([Ljava/lang/String;)V

    invoke-static {p0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 65
    return-void

    .line 45
    .end local v0    # "resId":I
    .end local v1    # "topLocales":[Ljava/lang/String;
    :cond_0
    const v0, 0x1108000d

    .restart local v0    # "resId":I
    goto :goto_0
.end method
