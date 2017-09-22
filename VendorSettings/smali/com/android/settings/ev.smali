.class Lcom/android/settings/ev;
.super Ljava/lang/Object;
.source "MiuiLocaleSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic rl:[Ljava/lang/String;

.field final synthetic rm:Lcom/android/settings/MiuiLocaleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiLocaleSettings;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/ev;->rm:Lcom/android/settings/MiuiLocaleSettings;

    iput-object p2, p0, Lcom/android/settings/ev;->rl:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 45
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ev;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/ev;->rm:Lcom/android/settings/MiuiLocaleSettings;

    iget-object v1, p0, Lcom/android/settings/ev;->rl:[Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/settings/MiuiLocaleSettings;->a(Lcom/android/settings/MiuiLocaleSettings;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/android/settings/ev;->rm:Lcom/android/settings/MiuiLocaleSettings;

    iget-object v2, p0, Lcom/android/settings/ev;->rl:[Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lcom/android/settings/MiuiLocaleSettings;->a(Lcom/android/settings/MiuiLocaleSettings;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 50
    sub-int/2addr v0, v1

    return v0
.end method
