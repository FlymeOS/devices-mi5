.class final Lcom/android/settings/users/UserPreference$1;
.super Ljava/lang/Object;
.source "UserPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/users/UserPreference;Lcom/android/settings/users/UserPreference;)I
    .locals 2

    .prologue
    .line 39
    invoke-static {p1}, Lcom/android/settings/users/UserPreference;->a(Lcom/android/settings/users/UserPreference;)I

    move-result v0

    .line 40
    invoke-static {p2}, Lcom/android/settings/users/UserPreference;->a(Lcom/android/settings/users/UserPreference;)I

    move-result v1

    .line 41
    if-ge v0, v1, :cond_0

    .line 42
    const/4 v0, -0x1

    .line 46
    :goto_0
    return v0

    .line 43
    :cond_0
    if-le v0, v1, :cond_1

    .line 44
    const/4 v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 36
    check-cast p1, Lcom/android/settings/users/UserPreference;

    check-cast p2, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/users/UserPreference$1;->a(Lcom/android/settings/users/UserPreference;Lcom/android/settings/users/UserPreference;)I

    move-result v0

    return v0
.end method
