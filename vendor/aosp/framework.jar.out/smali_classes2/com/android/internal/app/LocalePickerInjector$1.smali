.class final Lcom/android/internal/app/LocalePickerInjector$1;
.super Ljava/lang/Object;
.source "LocalePickerInjector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/LocalePickerInjector;->sortLocaleInfos([Lcom/android/internal/app/LocalePicker$LocaleInfo;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$topLocales:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/internal/app/LocalePickerInjector$1;->val$topLocales:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findTopLocale([Ljava/lang/String;Lcom/android/internal/app/LocalePicker$LocaleInfo;)I
    .locals 3
    .param p1, "topLocales"    # [Ljava/lang/String;
    .param p2, "localeInfo"    # Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .prologue
    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 58
    aget-object v1, p1, v0

    invoke-virtual {p2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 57
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    array-length v0, p1

    goto :goto_1
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/LocalePicker$LocaleInfo;Lcom/android/internal/app/LocalePicker$LocaleInfo;)I
    .locals 3
    .param p1, "lhs"    # Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .param p2, "rhs"    # Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .prologue
    .line 51
    iget-object v2, p0, Lcom/android/internal/app/LocalePickerInjector$1;->val$topLocales:[Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/app/LocalePickerInjector$1;->findTopLocale([Ljava/lang/String;Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v0

    .line 52
    .local v0, "lhsI":I
    iget-object v2, p0, Lcom/android/internal/app/LocalePickerInjector$1;->val$topLocales:[Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/android/internal/app/LocalePickerInjector$1;->findTopLocale([Ljava/lang/String;Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v1

    .line 53
    .local v1, "rhsI":I
    sub-int v2, v0, v1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/LocalePickerInjector$1;->compare(Lcom/android/internal/app/LocalePicker$LocaleInfo;Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v0

    return v0
.end method
