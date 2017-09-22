.class Lcom/android/settings/applications/PreferredDialerSettings$DisplayNameComparator;
.super Ljava/lang/Object;
.source "PreferredDialerSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final br:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PreferredDialerSettings$DisplayNameComparator;->br:Ljava/text/Collator;

    .line 197
    iget-object v0, p0, Lcom/android/settings/applications/PreferredDialerSettings$DisplayNameComparator;->br:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 198
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;)I
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/applications/PreferredDialerSettings$DisplayNameComparator;->br:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;->KM:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;->KM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 195
    check-cast p1, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;

    check-cast p2, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/PreferredDialerSettings$DisplayNameComparator;->a(Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;)I

    move-result v0

    return v0
.end method
